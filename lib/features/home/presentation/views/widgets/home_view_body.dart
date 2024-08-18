
import 'package:demo/core/utils/assets.dart';
import 'package:demo/core/utils/styles.dart';
import 'package:demo/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:demo/features/home/presentation/views/widgets/feature_home_List_view.dart';
import 'package:flutter/material.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        CustomListView(),
        SizedBox(height: 50,),
        Padding(
          padding: EdgeInsets.only(left: 18 , bottom: 15),
          child: Text("Best Seller", style: Styles.textTitle18,),
        ),
        BestSellerListViewItems(),
      ],
    );
  }
}

class BestSellerListViewItems extends StatelessWidget {
  const BestSellerListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
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
          const Column(
            children: [

            ],
          ),
        ],
      ),
    );
  }
}




