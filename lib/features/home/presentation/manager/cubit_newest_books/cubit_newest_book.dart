import 'package:bloc/bloc.dart';
import 'package:demo/features/home/presentation/manager/cubit_newest_books/states_newest_book.dart';

import '../../../domain/use_cases/fetch_newset_books_use_case.dart';

class NewestBookCubit extends Cubit<NewestBookStates> {
  NewestBookCubit({required this.newestBooksUseCase})
      : super(NewestBookInitial());
  final FetchNewestBooksUseCase newestBooksUseCase;

  Future<void> fetchNewestBooksUseCase() async {
    emit(NewestBookLoading());
    var result = await newestBooksUseCase.call();
    result.fold((failure) {
      emit(NewestBookFailure(message: failure.message));
    }, (books) {
      emit(NewestBookSuccess(books: books));
    });
  }
}