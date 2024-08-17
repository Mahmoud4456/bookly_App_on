import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomItemListView extends StatelessWidget {
  const CustomItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .28,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.green,
            image: const DecorationImage(
                image: AssetImage(assetsData.imageTest), fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}