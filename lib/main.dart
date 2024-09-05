import 'package:demo/core/functions/setup_service_locator.dart';
import 'package:demo/core/utils/routes.dart';
import 'package:demo/features/home/data/repo/repo_impel.dart';
import 'package:demo/features/home/domain/entitys/entity.dart';
import 'package:demo/features/home/domain/use_cases/fetch_feature_books_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'bloc_observer.dart';
import 'constants.dart';
import 'features/home/domain/use_cases/fetch_newset_books_use_case.dart';
import 'features/home/presentation/manager/cubit_feature_books/cubit_feature_books.dart';
import 'features/home/presentation/manager/cubit_newest_books/cubit_newest_book.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  setupServiceLocator();
  await Hive.openBox<BookEntity>(kNewestBox);
  await Hive.openBox<BookEntity>(kFeaturedBox);
  Bloc.observer = SimpleBlocObserver();

  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) {
          return FeatureBookCubit(
            featureBooksUseCase: FetchFeatureBooksUseCase(
              bookRepo: getIt.get<HomeRepoImpel>(),
            ),
          );
        }),
        BlocProvider(create: (context) {
          return NewestBookCubit(
            newestBooksUseCase: FetchNewestBooksUseCase(
              bookRepo: getIt.get<HomeRepoImpel>(),
            ),
          );
        }),
      ],
      child: MaterialApp.router(
        routerConfig: AppRoute.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.secularOneTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
