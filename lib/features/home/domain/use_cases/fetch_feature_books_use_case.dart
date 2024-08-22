import 'package:dartz/dartz.dart';
import 'package:demo/features/home/domain/repos/book_repo.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/use_case/use_case.dart';
import '../entitys/entity.dart';

class FetchFeatureBooksUseCase extends UseCase <List<BookEntity>, NoParam> {

  final BookRepo bookRepo ;

  FetchFeatureBooksUseCase({required this.bookRepo});

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async {
    return await bookRepo.fetchFuturesBooks();
  }

  




}


