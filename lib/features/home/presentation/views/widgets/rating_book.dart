import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

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