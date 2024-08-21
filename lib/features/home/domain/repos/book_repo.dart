import 'package:demo/features/home/domain/entitys/entity.dart';

abstract class BookRepo{

  Future <List<BookEntity>> fetchFuturesBooks ();
  Future <List<BookEntity>> fetchNewestBooks ();

}