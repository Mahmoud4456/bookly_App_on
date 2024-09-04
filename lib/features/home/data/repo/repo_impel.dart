import 'package:dartz/dartz.dart';

import 'package:demo/core/errors/failure.dart';

import 'package:demo/features/home/domain/entitys/entity.dart';

import '../../domain/repos/book_repo.dart';

class HomeRepoImpel extends BookRepo{
  @override
  Future<Either<Failure, List<BookEntity>>> fetchFuturesBooks() {
    // TODO: implement fetchFuturesBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }
}