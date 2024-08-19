import 'package:demo/core/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';

class ActionBottom extends StatelessWidget {
  const ActionBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: CustomBottom(
            color: Colors.white,
            text: r"19.99$",
          ),
          ),
          Expanded(child: CustomBottom(
            color: Color(0xffEf8262),
            text: "Free Preview",
            radius: BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ) ,
            textColor: Colors.white,
          ),
          ),
        ],
      ),
    );
  }
}
