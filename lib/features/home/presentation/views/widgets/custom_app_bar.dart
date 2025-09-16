import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32, bottom: 8),
      child: Row(
        children: [
          Image.asset(AssetsPath.logo, height: 30),
          const Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 40)),
        ],
      ),
    );
  }
}
