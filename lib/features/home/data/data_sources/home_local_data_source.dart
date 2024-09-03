import '../../domain/entitys/entity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFuturesBooks ();
  List<BookEntity> fetchNewestBooks ();
}

class HomeLocalDataSourceImpel extends HomeLocalDataSource{
  @override
  List<BookEntity> fetchFuturesBooks() {
    // TODO: implement fetchFuturesBooks
    throw UnimplementedError();
  }

  @override
  List<BookEntity> fetchNewestBooks() {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }

}
