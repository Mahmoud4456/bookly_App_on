import 'package:demo/features/home/presentation/views/widgets/rating_book.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class BestSellerListViewItems extends StatelessWidget {
  const BestSellerListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.green,
                image: const DecorationImage(
                    image: AssetImage(assetsData.imageTest), fit: BoxFit.fill),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: const Text(
                    "Harry Potter And The Cursed Child",
                    style: Styles.textTitle18,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  "J.K. Rowling",
                  style: Styles.textTitle14,
                ),
                const SizedBox(
                  height: 3,
                ),
                const Row(
                  children: [
                    Text(
                      r"19.99 $",
                      style: Styles.textTitle20,
                    ),
                    Spacer(),
                    RatingBook(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


