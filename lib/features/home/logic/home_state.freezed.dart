// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeState()';
  }
}

/// @nodoc
class $HomeStateCopyWith<$Res> {
  $HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}

/// @nodoc

class _initial implements HomeState {
  const _initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeState.initial()';
  }
}

/// @nodoc

class SpecializationLoading implements HomeState {
  const SpecializationLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SpecializationLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeState.specializationLoading()';
  }
}

/// @nodoc

class SpecializationSuccess implements HomeState {
  const SpecializationSuccess(this.specializationResponseModel);

  final SpecializationResponseModel specializationResponseModel;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SpecializationSuccessCopyWith<SpecializationSuccess> get copyWith =>
      _$SpecializationSuccessCopyWithImpl<SpecializationSuccess>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SpecializationSuccess &&
            (identical(other.specializationResponseModel,
                    specializationResponseModel) ||
                other.specializationResponseModel ==
                    specializationResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, specializationResponseModel);

  @override
  String toString() {
    return 'HomeState.specializationSuccess(specializationResponseModel: $specializationResponseModel)';
  }
}

/// @nodoc
abstract mixin class $SpecializationSuccessCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory $SpecializationSuccessCopyWith(SpecializationSuccess value,
          $Res Function(SpecializationSuccess) _then) =
      _$SpecializationSuccessCopyWithImpl;
  @useResult
  $Res call({SpecializationResponseModel specializationResponseModel});
}

/// @nodoc
class _$SpecializationSuccessCopyWithImpl<$Res>
    implements $SpecializationSuccessCopyWith<$Res> {
  _$SpecializationSuccessCopyWithImpl(this._self, this._then);

  final SpecializationSuccess _self;
  final $Res Function(SpecializationSuccess) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? specializationResponseModel = null,
  }) {
    return _then(SpecializationSuccess(
      null == specializationResponseModel
          ? _self.specializationResponseModel
          : specializationResponseModel // ignore: cast_nullable_to_non_nullable
              as SpecializationResponseModel,
    ));
  }
}

/// @nodoc

class SpecializationFailure implements HomeState {
  const SpecializationFailure(this.error);

  final ErrorHandler error;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SpecializationFailureCopyWith<SpecializationFailure> get copyWith =>
      _$SpecializationFailureCopyWithImpl<SpecializationFailure>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SpecializationFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'HomeState.specializationFailure(error: $error)';
  }
}

/// @nodoc
abstract mixin class $SpecializationFailureCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory $SpecializationFailureCopyWith(SpecializationFailure value,
          $Res Function(SpecializationFailure) _then) =
      _$SpecializationFailureCopyWithImpl;
  @useResult
  $Res call({ErrorHandler error});
}

/// @nodoc
class _$SpecializationFailureCopyWithImpl<$Res>
    implements $SpecializationFailureCopyWith<$Res> {
  _$SpecializationFailureCopyWithImpl(this._self, this._then);

  final SpecializationFailure _self;
  final $Res Function(SpecializationFailure) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(SpecializationFailure(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

/// @nodoc

class DoctorsSuccess implements HomeState {
  const DoctorsSuccess(final List<Doctors?>? doctorsList)
      : _doctorsList = doctorsList;

  final List<Doctors?>? _doctorsList;
  List<Doctors?>? get doctorsList {
    final value = _doctorsList;
    if (value == null) return null;
    if (_doctorsList is EqualUnmodifiableListView) return _doctorsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DoctorsSuccessCopyWith<DoctorsSuccess> get copyWith =>
      _$DoctorsSuccessCopyWithImpl<DoctorsSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DoctorsSuccess &&
            const DeepCollectionEquality()
                .equals(other._doctorsList, _doctorsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_doctorsList));

  @override
  String toString() {
    return 'HomeState.doctorsSuccess(doctorsList: $doctorsList)';
  }
}

/// @nodoc
abstract mixin class $DoctorsSuccessCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory $DoctorsSuccessCopyWith(
          DoctorsSuccess value, $Res Function(DoctorsSuccess) _then) =
      _$DoctorsSuccessCopyWithImpl;
  @useResult
  $Res call({List<Doctors?>? doctorsList});
}

/// @nodoc
class _$DoctorsSuccessCopyWithImpl<$Res>
    implements $DoctorsSuccessCopyWith<$Res> {
  _$DoctorsSuccessCopyWithImpl(this._self, this._then);

  final DoctorsSuccess _self;
  final $Res Function(DoctorsSuccess) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? doctorsList = freezed,
  }) {
    return _then(DoctorsSuccess(
      freezed == doctorsList
          ? _self._doctorsList
          : doctorsList // ignore: cast_nullable_to_non_nullable
              as List<Doctors?>?,
    ));
  }
}

/// @nodoc

class DoctorsError implements HomeState {
  const DoctorsError(this.errorHandler);

  final ErrorHandler errorHandler;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DoctorsErrorCopyWith<DoctorsError> get copyWith =>
      _$DoctorsErrorCopyWithImpl<DoctorsError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DoctorsError &&
            (identical(other.errorHandler, errorHandler) ||
                other.errorHandler == errorHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorHandler);

  @override
  String toString() {
    return 'HomeState.doctorsError(errorHandler: $errorHandler)';
  }
}

/// @nodoc
abstract mixin class $DoctorsErrorCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory $DoctorsErrorCopyWith(
          DoctorsError value, $Res Function(DoctorsError) _then) =
      _$DoctorsErrorCopyWithImpl;
  @useResult
  $Res call({ErrorHandler errorHandler});
}

/// @nodoc
class _$DoctorsErrorCopyWithImpl<$Res> implements $DoctorsErrorCopyWith<$Res> {
  _$DoctorsErrorCopyWithImpl(this._self, this._then);

  final DoctorsError _self;
  final $Res Function(DoctorsError) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? errorHandler = null,
  }) {
    return _then(DoctorsError(
      null == errorHandler
          ? _self.errorHandler
          : errorHandler // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

// dart format on
