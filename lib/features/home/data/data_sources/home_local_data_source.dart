import 'package:demo/constants.dart';
import 'package:hive_flutter/adapters.dart';

import '../../domain/entitys/entity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFuturesBooks ();
  List<BookEntity> fetchNewestBooks ();
}

class HomeLocalDataSourceImpel extends HomeLocalDataSource{
  @override
  List<BookEntity> fetchFuturesBooks() {

    var box = Hive.box<BookEntity>(kFeaturedBox);
   return box.values.toList();
  }

  @override
  List<BookEntity> fetchNewestBooks() {

    var box = Hive.box<BookEntity>(kNewestBox);
    return box.values.toList();
  }

}
