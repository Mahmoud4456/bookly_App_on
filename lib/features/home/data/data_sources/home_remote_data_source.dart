import 'package:demo/features/home/domain/entitys/entity.dart';

abstract class HomeRemoteDataSource {
  Future <List<BookEntity>> fetchFuturesBooks ();
  Future <List<BookEntity>> fetchNewestBooks ();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource{
  @override
  Future<List<BookEntity>> fetchFuturesBooks() {

    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() {

    throw UnimplementedError();
  }

}