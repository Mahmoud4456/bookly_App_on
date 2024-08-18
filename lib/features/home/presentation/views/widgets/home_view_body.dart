import 'package:demo/core/utils/styles.dart';
import 'package:demo/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:demo/features/home/presentation/views/widgets/feature_home_List_view.dart';
import 'package:flutter/material.dart';

import 'bset_saller_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: CustomAppBar(),
              ),
              CustomListView(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Best Seller",
                  style: Styles.textTitle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          sliver: BestSellerListView(),
        ),
      ],
    );
  }
}


