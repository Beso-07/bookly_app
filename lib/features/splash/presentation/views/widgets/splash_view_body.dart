import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/init_sliding_animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    final setup = initSlidingAnimation(this);
    animationController = setup.controller;
    slidingAnimation = setup.animation;
    navigateToHome();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void navigateToHome() {
    Future.delayed(Duration(seconds: 2), () {
      Get.to(
        () => const HomeView(),
        transition: Transition.fade,
        duration: kTranstionDuration,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SlideTransition(
        position: slidingAnimation,
        child: Image.asset(
          AssetsPath.logo,
          width: MediaQuery.of(context).size.width * 0.6,
        ),
      ),
    );
  }
}
