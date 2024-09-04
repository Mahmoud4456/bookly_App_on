import 'package:dio/dio.dart';

abstract class Failure{
  final String message ;

  Failure(this.message);
}

class ServerFailure extends Failure{
  ServerFailure(super.message);

  factory ServerFailure.dioError(DioException e){
    switch(e.type){
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection Time Out with Api server");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send Time Out with Api");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive Time Out with Api server");
      case DioExceptionType.badCertificate:
        return ServerFailure("Bad certificate");
      case DioExceptionType.badResponse:
        return ServerFailure.badResponse( e.response!.statusCode!, e.response!);
      case DioExceptionType.cancel:
        return ServerFailure("Request was canceled");
      case DioExceptionType.connectionError:
        return ServerFailure("No InterNet connection ");
      case DioExceptionType.unknown:
        return ServerFailure("Unknown Error please try again ");
    }
  }
  factory ServerFailure.badResponse( int statuesCode , dynamic response){

  if(statuesCode == 404){
    return ServerFailure("Your request was not found , please try later");
  }else if(statuesCode == 500){
    return ServerFailure("there was a problem with server try again later");
  }else if (statuesCode == 400 ||statuesCode == 401||statuesCode == 403){
    return ServerFailure(response["error"]["message"]);
  }else{
    return ServerFailure("there was an error , please try again");
  }
  }

}