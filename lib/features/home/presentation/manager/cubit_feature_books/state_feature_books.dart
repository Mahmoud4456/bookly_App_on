import 'package:demo/features/home/domain/entitys/entity.dart';

abstract class FeatureBookStates {}

class FeatureBookInitial extends FeatureBookStates{}

class FeatureBookLoading extends FeatureBookStates{}

class FeatureBookSuccess extends FeatureBookStates{
  final List<BookEntity> books ;

  FeatureBookSuccess({required this.books});
}

class FeatureBookFailure extends FeatureBookStates{
  final String message ;

  FeatureBookFailure({required this.message});
}
