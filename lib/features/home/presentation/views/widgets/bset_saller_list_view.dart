import 'package:flutter/material.dart';
import 'best_seller_list_view_items.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList( // Used SliverChildBuilderDelegate: This is similar to the ListView.builder, allowing us to create list items on demand
      //Replaced BestSellerListView with SliverList: Instead of using a separate ListView inside a SliverFillRemaining, we now use a SliverList directly. This allows for better integration with the CustomScrollView.
      delegate: SliverChildBuilderDelegate((context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: BestSellerListViewItems(),
        );
      }, childCount: 10),
    );
  }
}