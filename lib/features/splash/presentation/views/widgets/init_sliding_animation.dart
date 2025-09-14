import 'package:flutter/material.dart';

class SlidingAnimation {
  final AnimationController controller;
  final Animation<Offset> animation;

  SlidingAnimation(this.controller, this.animation);
}

SlidingAnimation initSlidingAnimation(TickerProvider vsync) {
  final controller = AnimationController(
    vsync: vsync,
    duration: const Duration(seconds: 1),
  );

  final animation = Tween<Offset>(
    begin: const Offset(0, 2),
    end: Offset.zero,
  ).animate(controller);

  controller.forward();

  return SlidingAnimation(controller, animation);
}
