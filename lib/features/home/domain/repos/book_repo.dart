import 'package:dartz/dartz.dart';
import 'package:demo/core/errors/failure.dart';
import 'package:demo/features/home/domain/entitys/entity.dart';

abstract class BookRepo{

  Future <Either<Failure,List<BookEntity>>> fetchFuturesBooks ();
  Future <List<BookEntity>> fetchNewestBooks ();

}