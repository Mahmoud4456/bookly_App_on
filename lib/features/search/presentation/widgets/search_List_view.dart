import 'package:demo/features/home/presentation/views/widgets/best_seller_list_view_items.dart';
import 'package:flutter/material.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 10,
          itemBuilder:(context , index) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: BestSellerListViewItems(),
            ) ;
          }
      ),
    );
  }
}

