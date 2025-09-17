import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.star, color: Colors.amber, size: 20),
        SizedBox(width: 5),
        Text('4.8', style: Styles.textStyle16),
        SizedBox(width: 10),
        Text('(2150)', style: Styles.textStyle14),
      ],
    );
  }
}