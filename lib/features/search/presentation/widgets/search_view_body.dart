import 'package:demo/features/search/presentation/widgets/custom_search_text_field.dart';
import 'package:demo/features/search/presentation/widgets/search_List_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child:  Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            CustomSearchTextField(),
            SizedBox(
              height: 16,
            ),
            Text(
              "Result",
              style: Styles.textTitle18,
            ),
            SizedBox(
              height: 14,
            ),
            SearchListView(),
          ],
        ),
      ),
    );
  }
}

