
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants.dart';
import 'features/splash/presentation/views/splash_view.dart';
void main (){

  runApp( const Bookly());
}
class Bookly extends StatelessWidget{
  const Bookly({super.key});
  @override
  Widget build(BuildContext context) {

    return  GetMaterialApp(
     theme : ThemeData().copyWith(scaffoldBackgroundColor: kPrimaryColor,),
      home: const SplashView(),
    );
  }
}

