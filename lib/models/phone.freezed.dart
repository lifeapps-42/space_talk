// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'phone.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PhoneNumber _$PhoneNumberFromJson(Map<String, dynamic> json) {
  return _PhoneNumber.fromJson(json);
}

/// @nodoc
class _$PhoneNumberTearOff {
  const _$PhoneNumberTearOff();

  _PhoneNumber call(String value) {
    return _PhoneNumber(
      value,
    );
  }

  PhoneNumber fromJson(Map<String, Object?> json) {
    return PhoneNumber.fromJson(json);
  }
}

/// @nodoc
const $PhoneNumber = _$PhoneNumberTearOff();

/// @nodoc
mixin _$PhoneNumber {
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhoneNumberCopyWith<PhoneNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneNumberCopyWith<$Res> {
  factory $PhoneNumberCopyWith(
          PhoneNumber value, $Res Function(PhoneNumber) then) =
      _$PhoneNumberCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$PhoneNumberCopyWithImpl<$Res> implements $PhoneNumberCopyWith<$Res> {
  _$PhoneNumberCopyWithImpl(this._value, this._then);

  final PhoneNumber _value;
  // ignore: unused_field
  final $Res Function(PhoneNumber) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PhoneNumberCopyWith<$Res>
    implements $PhoneNumberCopyWith<$Res> {
  factory _$PhoneNumberCopyWith(
          _PhoneNumber value, $Res Function(_PhoneNumber) then) =
      __$PhoneNumberCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$PhoneNumberCopyWithImpl<$Res> extends _$PhoneNumberCopyWithImpl<$Res>
    implements _$PhoneNumberCopyWith<$Res> {
  __$PhoneNumberCopyWithImpl(
      _PhoneNumber _value, $Res Function(_PhoneNumber) _then)
      : super(_value, (v) => _then(v as _PhoneNumber));

  @override
  _PhoneNumber get _value => super._value as _PhoneNumber;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_PhoneNumber(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PhoneNumber implements _PhoneNumber {
  const _$_PhoneNumber(this.value);

  factory _$_PhoneNumber.fromJson(Map<String, dynamic> json) =>
      _$$_PhoneNumberFromJson(json);

  @override
  final String value;

  @override
  String toString() {
    return 'PhoneNumber(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PhoneNumber &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$PhoneNumberCopyWith<_PhoneNumber> get copyWith =>
      __$PhoneNumberCopyWithImpl<_PhoneNumber>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhoneNumberToJson(this);
  }
}

abstract class _PhoneNumber implements PhoneNumber {
  const factory _PhoneNumber(String value) = _$_PhoneNumber;

  factory _PhoneNumber.fromJson(Map<String, dynamic> json) =
      _$_PhoneNumber.fromJson;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$PhoneNumberCopyWith<_PhoneNumber> get copyWith =>
      throw _privateConstructorUsedError;
}
