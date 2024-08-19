import 'package:demo/features/home/presentation/views/widgets/book_details_app_bar.dart';
import 'package:demo/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * .16;
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
          ],
        ),
      ),
    );
  }
}


