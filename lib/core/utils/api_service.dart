import 'package:dio/dio.dart';

class Api{

  final String baseUrl = "https://www.googleapis.com/books/v1/";
  final Dio _dio ;

  Api(this._dio);

   Future<Map<String , dynamic>> get ({required String endPoint}) async{
  Response response = await  _dio.get('$baseUrl$endPoint');
   return response.data ;
   }

}