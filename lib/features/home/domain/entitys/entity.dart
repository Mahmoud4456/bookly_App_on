
import 'package:hive/hive.dart';
part 'entity.g.dart';
@HiveType(typeId: 0)
class BookEntity {
  @HiveField(0)
  final String? bookId;
  @HiveField(1)
  final String? image ;
  @HiveField(2)
  final String? authorName ;
  @HiveField(3)
  final String? bookName ;
  @HiveField(4)
  final num? price ;
  @HiveField(5)
  final num? rate ;

  BookEntity( { this.bookId, this.image,  this.authorName,  this.bookName,  this.price,  this.rate});




}