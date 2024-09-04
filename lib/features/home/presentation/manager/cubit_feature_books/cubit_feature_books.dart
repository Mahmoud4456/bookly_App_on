
import 'package:bloc/bloc.dart';
import 'package:demo/features/home/presentation/manager/cubit_feature_books/state_feature_books.dart';

import '../../../domain/use_cases/fetch_feature_books_use_case.dart';

class FeatureBookCubit extends Cubit<FeatureBookStates> {
  FeatureBookCubit({required this.featureBooksUseCase})
      : super(FeatureBookInitial());
  final FetchFeatureBooksUseCase featureBooksUseCase;

  Future<void> fetchFeatureBooksUseCase() async {
    emit(FeatureBookLoading());
    var result = await featureBooksUseCase.call();
    result.fold((failure) {
      emit(FeatureBookFailure(message: failure.message));
    }, (books) {
      emit(FeatureBookSuccess(books: books));
    });
  }
}
