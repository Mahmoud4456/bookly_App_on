import 'package:demo/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({required this.text , required  this.color , super.key, this.radius, this.textColor});
  final Color color;
  final Color? textColor ;
  final String text ;
  final BorderRadius? radius ;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 50,
        child: TextButton(
          style:TextButton.styleFrom(
            backgroundColor:color,
            shape: RoundedRectangleBorder(
              borderRadius: radius ?? const BorderRadius.only(
                topLeft:  Radius.circular(16),
                bottomLeft: Radius.circular(16),
              )
            ),
          ) ,
            onPressed: (){},
            child:  Text(text,
              style: Styles.textTitle16.copyWith(
                color: textColor ?? Colors.black,
                fontWeight: FontWeight.w500,
                  fontSize: 18,
              ),
            )
        )
    );
  }
}
