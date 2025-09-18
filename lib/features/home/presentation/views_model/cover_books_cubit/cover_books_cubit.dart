import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'cover_books_state.dart';

class CoverBooksCubit extends Cubit<CoverBooksState> {
  CoverBooksCubit(this.homeRepo) : super(CoverBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchCoverBooks() async {
    emit(CoverBooksLoading());
    var result = await homeRepo.fetchCoverBooks();

    result.fold(
      (failure) => emit(CoverBooksFailure(failure.errMessage)),
      (books) => emit(CoverBooksSuccess(books)),
    );
  }
}
