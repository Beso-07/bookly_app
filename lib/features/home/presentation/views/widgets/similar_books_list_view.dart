import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_cover.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .2,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: CustomBookCover(bookImage: 'https://www.shutterstock.com/image-vector/img-vector-icon-design-on-260nw-2164648583.jpg',),
          );
        },
      ),
    );
  }
}
