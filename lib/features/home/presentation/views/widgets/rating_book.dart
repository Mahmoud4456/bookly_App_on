import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class RatingBook extends StatelessWidget {
  const RatingBook({this.mainAxisAlignment = MainAxisAlignment.start  , super.key});
  final MainAxisAlignment mainAxisAlignment ;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 16,
        ),
        SizedBox(
          width: 6.1,
        ),
        Text(
          "4.8 ",
          style: Styles.textTitle16,
        ),
        SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            "(2061)",
            style: Styles.textTitle14,
          ),
        ),
      ],
    );
  }
}