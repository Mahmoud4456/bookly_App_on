import 'package:demo/features/home/data/models/BookModel.dart';
import 'package:demo/features/home/domain/entitys/entity.dart';

import '../../../../core/utils/api_service.dart';

abstract class HomeRemoteDataSource {
  Future <List<BookEntity>> fetchFuturesBooks ();
  Future <List<BookEntity>> fetchNewestBooks ();
  final ApiService apiService ;

  HomeRemoteDataSource(this.apiService);
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource{
  HomeRemoteDataSourceImpl(super.apiService);

  @override
  Future<List<BookEntity>> fetchFuturesBooks() async {
  var data = await apiService.get(endPoint: "volumes?Filtering=free-ebooks&q=programming");
  List<BookEntity> books = getBooksList(data);
  return books ;
  }


  List<BookEntity> getBooksList(Map<String, dynamic> data) {
     List<BookEntity> books = [];
    for( var book in data['items'] ){
      books.add(BookModel.fromJson(book));
    }
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() {

    throw UnimplementedError();
  }

}