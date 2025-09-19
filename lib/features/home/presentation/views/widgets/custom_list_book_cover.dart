import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_cover.dart';
import 'package:bookly_app/features/home/presentation/views_model/cover_books_cubit/cover_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CustomListBookCover extends StatelessWidget {
  const CustomListBookCover({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoverBooksCubit, CoverBooksState>(
      builder: (context, state) {
        if (state is CoverBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 16),
                  child: InkWell(
                    onTap: () {
                      GoRouter.of(context).push(
                        AppRouter.kBookDetailsView,
                        extra: state.books[index],
                      );
                    },
                    child: CustomBookCover(
                      bookImage:
                          state.books[index].volumeInfo.imageLinks.thumbnail,
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is CoverBooksFailure) {
          return CustomErrorMessage(errMessage: state.errMessage);
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
