
import 'package:demo/core/utils/styles.dart';
import 'package:demo/features/home/presentation/views/widgets/best_seller_list_view_items.dart';
import 'package:demo/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:demo/features/home/presentation/views/widgets/feature_home_List_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          CustomListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            "Best Seller",
            style: Styles.textTitle18,
          ),
          BestSellerListViewItems(),
        ],
      ),
    );
  }
}

