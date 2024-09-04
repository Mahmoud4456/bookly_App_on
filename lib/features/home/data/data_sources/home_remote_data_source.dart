import 'package:demo/constants.dart';
import 'package:demo/features/home/data/models/BookModel.dart';
import 'package:demo/features/home/domain/entitys/entity.dart';

import '../../../../core/utils/api_service.dart';
import '../../../../core/utils/functions.dart';

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
  saveBookData(books ,  kFeaturedBox);
  return books ;
  }


  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiService.get(endPoint: "volumes?Filtering=free-ebooks&Sorting=newest&q=programming");
    List<BookEntity> books = getBooksList(data);
    saveBookData(books, kNewestBox);
    return books ;
  }


  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for( var book in data['items'] ){
      books.add(BookModel.fromJson(book));
    }
    return books;
  }

}