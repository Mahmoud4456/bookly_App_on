import 'package:dartz/dartz.dart';
import 'package:demo/core/errors/failure.dart';
import 'package:demo/features/home/domain/entitys/entity.dart';
import 'package:demo/features/home/domain/repos/book_repo.dart';

import '../../../../core/use_case/use_case.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity>,NoParam>{
  final BookRepo bookRepo ;

  FetchNewestBooksUseCase({required this.bookRepo});

  @override

  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async {
    return await bookRepo.fetchNewestBooks();
  }

}