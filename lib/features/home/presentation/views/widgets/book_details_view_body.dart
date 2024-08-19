import 'package:demo/features/home/presentation/views/widgets/action_buttom_books_details.dart';
import 'package:demo/features/home/presentation/views/widgets/book_details_app_bar.dart';
import 'package:demo/features/home/presentation/views/widgets/book_details_list_view.dart';
import 'package:demo/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:demo/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:demo/features/home/presentation/views/widgets/rating_book.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  BookDetailsAppBar(),
                  BookDetailsSection(),
                  ActionBottom(),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: SizedBox(
                      height: 40,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "You can also like ",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(child: BookDetailsListView()),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

