
import 'package:demo/core/utils/assets.dart';
import 'package:demo/core/utils/routes.dart';
import 'package:demo/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});
  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
 late AnimationController animationController ;
 late Animation<Offset> slidingText ;
 @override
  void initState() {
    super.initState();
    initSilidingAnimation();
    navigateToHomePage();

 }

 @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(assetsData.logo ),
        SlidingText(slidingText: slidingText),
      ],
    );
  }

 void initSilidingAnimation() {
   animationController = AnimationController(vsync: this , duration: const Duration( seconds: 1) );
   slidingText = Tween<Offset>( begin: const Offset(0, 3)  , end: const Offset(0, 0) ).animate(animationController) ;
   animationController.forward();
 }

 void navigateToHomePage() {
   Future.delayed( const Duration( seconds: 2 ),(){
    // Get.to(()=> const HomeView() , transition: Transition.fadeIn , duration: kTranstionDuration );
  GoRouter.of( context).push(AppRoute.kHomeView);
   });
 }
}


