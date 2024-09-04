import 'package:dartz/dartz.dart';

import 'package:demo/core/errors/failure.dart';
import 'package:demo/features/home/data/data_sources/home_local_data_source.dart';
import 'package:demo/features/home/data/data_sources/home_remote_data_source.dart';

import 'package:demo/features/home/domain/entitys/entity.dart';
import 'package:dio/dio.dart';

import '../../domain/repos/book_repo.dart';

class HomeRepoImpel extends BookRepo{
  @override
  Future<Either<Failure, List<BookEntity>>> fetchFuturesBooks() async {
 List <BookEntity> books ;
 try{
   books = HomeLocalDataSourceImpel().fetchFuturesBooks();
   if( books.isNotEmpty){
     return right(books)  ;
   }
   books = await HomeRemoteDataSourceImpl().fetchFuturesBooks();
   return right(books) ;
 } catch (e){
 if(e is DioException)
   {
     return left(
       ServerFailure.dioError(e)
   );
   }
 return left(ServerFailure(e.toString()));

 }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async{
      List <BookEntity> books ;
      try{
        books = HomeLocalDataSourceImpel().fetchNewestBooks();
        if( books.isNotEmpty){
          return right(books)  ;
        }
        books = await HomeRemoteDataSourceImpl().fetchNewestBooks();
        return right(books) ;
      }catch (e){
        if(e is DioException)
        {
          return left(
              ServerFailure.dioError(e)
          );
        }
        return left(ServerFailure(e.toString()));
      }
    }


}