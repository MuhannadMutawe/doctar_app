import 'package:doctor_app/core/networking/api_error_handler.dart';
import 'package:doctor_app/features/home/data/models/specialization_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState{
  const factory HomeState.initial() = _initial;

  // specialization
  const factory HomeState.specializationLoading() = SpecializationLoading;
  const factory HomeState.specializationSuccess(SpecializationResponseModel specializationResponseModel) = SpecializationSuccess;
  const factory HomeState.specializationFailure(ErrorHandler error) = SpecializationFailure;

  // Doctors
  const factory HomeState.doctorsSuccess(List<Doctors?>? doctorsList) = DoctorsSuccess;
  const factory HomeState.doctorsError(ErrorHandler errorHandler) =
  DoctorsError;
}