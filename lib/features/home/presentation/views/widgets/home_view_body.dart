
import 'package:demo/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:demo/features/home/presentation/views/widgets/custom_list_item.dart';
import 'package:flutter/material.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        CustomItemListView(),
      ],
    );
  }
}


