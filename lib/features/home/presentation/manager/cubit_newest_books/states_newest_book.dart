import '../../../domain/entitys/entity.dart';

abstract class NewestBookStates {}

class NewestBookInitial extends NewestBookStates{}

class NewestBookLoading extends NewestBookStates{}

class NewestBookSuccess extends NewestBookStates{
  final List<BookEntity> books ;

  NewestBookSuccess({required this.books});
}

class NewestBookFailure extends NewestBookStates{
  final String message ;

  NewestBookFailure({required this.message});
}
