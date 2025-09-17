import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_cover.dart';
import 'package:flutter/material.dart';

class CustomListBookCover extends StatelessWidget {
  const CustomListBookCover({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CustomBookCover(),
          );
        },
      ),
    );
  }
}
