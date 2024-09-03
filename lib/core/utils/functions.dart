import 'package:hive_flutter/adapters.dart';

import '../../features/home/domain/entitys/entity.dart';

void saveBookData(List<BookEntity> books , String boxName) {
  var box = Hive.box(boxName);
  box.addAll(books);
}