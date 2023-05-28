// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomePageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchDetails value) fetchDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchDetails value)? fetchDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchDetails value)? fetchDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageEventCopyWith<$Res> {
  factory $HomePageEventCopyWith(
          HomePageEvent value, $Res Function(HomePageEvent) then) =
      _$HomePageEventCopyWithImpl<$Res, HomePageEvent>;
}

/// @nodoc
class _$HomePageEventCopyWithImpl<$Res, $Val extends HomePageEvent>
    implements $HomePageEventCopyWith<$Res> {
  _$HomePageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchDetailsCopyWith<$Res> {
  factory _$$FetchDetailsCopyWith(
          _$FetchDetails value, $Res Function(_$FetchDetails) then) =
      __$$FetchDetailsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchDetailsCopyWithImpl<$Res>
    extends _$HomePageEventCopyWithImpl<$Res, _$FetchDetails>
    implements _$$FetchDetailsCopyWith<$Res> {
  __$$FetchDetailsCopyWithImpl(
      _$FetchDetails _value, $Res Function(_$FetchDetails) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchDetails implements FetchDetails {
  const _$FetchDetails();

  @override
  String toString() {
    return 'HomePageEvent.fetchDetails()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchDetails);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDetails,
  }) {
    return fetchDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDetails,
  }) {
    return fetchDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDetails,
    required TResult orElse(),
  }) {
    if (fetchDetails != null) {
      return fetchDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchDetails value) fetchDetails,
  }) {
    return fetchDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchDetails value)? fetchDetails,
  }) {
    return fetchDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchDetails value)? fetchDetails,
    required TResult orElse(),
  }) {
    if (fetchDetails != null) {
      return fetchDetails(this);
    }
    return orElse();
  }
}

abstract class FetchDetails implements HomePageEvent {
  const factory FetchDetails() = _$FetchDetails;
}

/// @nodoc
mixin _$HomePageState {
  HidocModel? get allDetails => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomePageStateCopyWith<HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res, HomePageState>;
  @useResult
  $Res call({HidocModel? allDetails, bool isError, bool isLoading});
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res, $Val extends HomePageState>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allDetails = freezed,
    Object? isError = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      allDetails: freezed == allDetails
          ? _value.allDetails
          : allDetails // ignore: cast_nullable_to_non_nullable
              as HidocModel?,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HidocModel? allDetails, bool isError, bool isLoading});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allDetails = freezed,
    Object? isError = null,
    Object? isLoading = null,
  }) {
    return _then(_$_Initial(
      allDetails: freezed == allDetails
          ? _value.allDetails
          : allDetails // ignore: cast_nullable_to_non_nullable
              as HidocModel?,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.allDetails,
      required this.isError,
      required this.isLoading});

  @override
  final HidocModel? allDetails;
  @override
  final bool isError;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'HomePageState(allDetails: $allDetails, isError: $isError, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.allDetails, allDetails) ||
                other.allDetails == allDetails) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, allDetails, isError, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements HomePageState {
  const factory _Initial(
      {required final HidocModel? allDetails,
      required final bool isError,
      required final bool isLoading}) = _$_Initial;

  @override
  HidocModel? get allDetails;
  @override
  bool get isError;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
