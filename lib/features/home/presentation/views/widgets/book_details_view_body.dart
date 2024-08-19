import 'package:demo/features/home/presentation/views/widgets/action_buttom_books_details.dart';
import 'package:demo/features/home/presentation/views/widgets/book_details_app_bar.dart';
import 'package:demo/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:demo/features/home/presentation/views/widgets/rating_book.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * .18;
    return  SafeArea(
      child: Padding(
        padding:const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children:  [
           const BookDetailsAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width ),
              child: const CustomBookItem(),
            ),
           const SizedBox(height: 30,),
            Text ("The jungle Book", style: Styles.textTitle30.copyWith(
              fontWeight: FontWeight.w300
            ),),
            const SizedBox(height: 6,),
            Opacity(
              opacity: .7,
              child: Text ("Rudyard kipling", style: Styles.textTitle20.copyWith(
                  fontStyle: FontStyle.italic,
              ),
              ),
            ),
            const SizedBox(height:15,),
            const RatingBook(mainAxisAlignment:MainAxisAlignment.center,),
            const SizedBox(height: 37,),
            const ActionBottom(),
          ],
        ),
      ),
    );
  }
}


