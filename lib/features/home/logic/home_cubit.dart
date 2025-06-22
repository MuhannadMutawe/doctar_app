import 'package:doctor_app/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(HomeState.initial());

  void getSpecialization() async {
    emit(HomeState.specializationLoading());
    final response = await _homeRepo.getSpecialization();
    response.when(
      success:(data) {
        emit(HomeState.specializationSuccess(data));
      },
      failure: (errorHandler) {
        emit(HomeState.specializationFailure(errorHandler));
      },
    );
  }
}
