import 'package:demo/features/home/presentation/views/widgets/custom_list_item.dart';
import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .28,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context ,index){
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: CustomItemListView(),
            );
          }
      ),
    );
  }

}