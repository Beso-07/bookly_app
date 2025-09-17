import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(Icons.star, color: Colors.amber, size: 23),
        const SizedBox(width: 8),
        const Text('4.8', style: Styles.textStyle16),
        const SizedBox(width: 10),
        Opacity(
          opacity: .5,
          child: Text(
            '(2150)',
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
