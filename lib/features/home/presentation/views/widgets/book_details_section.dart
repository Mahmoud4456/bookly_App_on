import 'package:demo/core/utils/styles.dart';
import 'package:demo/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:demo/features/home/presentation/views/widgets/rating_book.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * .18;
    return  Column(
      children: [

        Padding(
          padding: EdgeInsets.symmetric(horizontal: width),
          child: const CustomBookItem(),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          "The jungle Book",
          style: Styles.textTitle30
              .copyWith(fontWeight: FontWeight.w300),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            "Rudyard kipling",
            style: Styles.textTitle20.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const RatingBook(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
      ],
    );
  }
}
