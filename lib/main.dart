
import 'package:demo/core/utils/routes.dart';
import 'package:demo/features/home/domain/entitys/entity.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

import 'constants.dart';
void main () async {

  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox(kFeaturedBox);

  runApp( const Bookly());
}
class Bookly extends StatelessWidget{
  const Bookly({super.key});
  @override
  Widget build(BuildContext context) {

    return  MaterialApp.router (
      routerConfig: AppRoute.router,
      debugShowCheckedModeBanner: false,
     theme : ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor,
     textTheme: GoogleFonts.secularOneTextTheme(ThemeData.dark().textTheme)
     ),

    );
  }
}




