import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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

class RatingBook extends StatelessWidget {
  const RatingBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 16,
        ),
        const SizedBox(
          width: 6.1,
        ),
        const Text(
          "4.8 ",
          style: Styles.textTitle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          "(2061)",
          style: Styles.textTitle14.copyWith(color: const Color(0xff707070)),
        ),
      ],
    );
  }
}
