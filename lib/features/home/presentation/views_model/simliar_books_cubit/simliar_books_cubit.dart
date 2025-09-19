import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'simliar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimliarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimliarBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchSimliarBooks({required String category}) async {
    emit(SimliarBooksLoadign());
    var result = await homeRepo.fetchSimilarBooks(category: category);

    result.fold(
      (failure) => emit(SimliarBooksFailure(failure.errMessage)),
      (books) => emit(SimliarBooksSuccess(books)),
    );
  }
}
