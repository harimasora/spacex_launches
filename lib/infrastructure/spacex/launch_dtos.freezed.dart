// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'launch_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LaunchDTO _$LaunchDTOFromJson(Map<String, dynamic> json) {
  return _LaunchDTO.fromJson(json);
}

/// @nodoc
class _$LaunchDTOTearOff {
  const _$LaunchDTOTearOff();

  _LaunchDTO call(
      {required String id,
      required String name,
      @FlightNumberConverter() required String flightNumber,
      @DateTimeConverter() required DateTime launchDate,
      required List<String> images,
      required String patchUrl,
      required String details}) {
    return _LaunchDTO(
      id: id,
      name: name,
      flightNumber: flightNumber,
      launchDate: launchDate,
      images: images,
      patchUrl: patchUrl,
      details: details,
    );
  }

  LaunchDTO fromJson(Map<String, Object> json) {
    return LaunchDTO.fromJson(json);
  }
}

/// @nodoc
const $LaunchDTO = _$LaunchDTOTearOff();

/// @nodoc
mixin _$LaunchDTO {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @FlightNumberConverter()
  String get flightNumber => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get launchDate => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  String get patchUrl => throw _privateConstructorUsedError;
  String get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LaunchDTOCopyWith<LaunchDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchDTOCopyWith<$Res> {
  factory $LaunchDTOCopyWith(LaunchDTO value, $Res Function(LaunchDTO) then) =
      _$LaunchDTOCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      @FlightNumberConverter() String flightNumber,
      @DateTimeConverter() DateTime launchDate,
      List<String> images,
      String patchUrl,
      String details});
}

/// @nodoc
class _$LaunchDTOCopyWithImpl<$Res> implements $LaunchDTOCopyWith<$Res> {
  _$LaunchDTOCopyWithImpl(this._value, this._then);

  final LaunchDTO _value;
  // ignore: unused_field
  final $Res Function(LaunchDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? flightNumber = freezed,
    Object? launchDate = freezed,
    Object? images = freezed,
    Object? patchUrl = freezed,
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      flightNumber: flightNumber == freezed
          ? _value.flightNumber
          : flightNumber // ignore: cast_nullable_to_non_nullable
              as String,
      launchDate: launchDate == freezed
          ? _value.launchDate
          : launchDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      patchUrl: patchUrl == freezed
          ? _value.patchUrl
          : patchUrl // ignore: cast_nullable_to_non_nullable
              as String,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LaunchDTOCopyWith<$Res> implements $LaunchDTOCopyWith<$Res> {
  factory _$LaunchDTOCopyWith(
          _LaunchDTO value, $Res Function(_LaunchDTO) then) =
      __$LaunchDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      @FlightNumberConverter() String flightNumber,
      @DateTimeConverter() DateTime launchDate,
      List<String> images,
      String patchUrl,
      String details});
}

/// @nodoc
class __$LaunchDTOCopyWithImpl<$Res> extends _$LaunchDTOCopyWithImpl<$Res>
    implements _$LaunchDTOCopyWith<$Res> {
  __$LaunchDTOCopyWithImpl(_LaunchDTO _value, $Res Function(_LaunchDTO) _then)
      : super(_value, (v) => _then(v as _LaunchDTO));

  @override
  _LaunchDTO get _value => super._value as _LaunchDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? flightNumber = freezed,
    Object? launchDate = freezed,
    Object? images = freezed,
    Object? patchUrl = freezed,
    Object? details = freezed,
  }) {
    return _then(_LaunchDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      flightNumber: flightNumber == freezed
          ? _value.flightNumber
          : flightNumber // ignore: cast_nullable_to_non_nullable
              as String,
      launchDate: launchDate == freezed
          ? _value.launchDate
          : launchDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      patchUrl: patchUrl == freezed
          ? _value.patchUrl
          : patchUrl // ignore: cast_nullable_to_non_nullable
              as String,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LaunchDTO extends _LaunchDTO {
  const _$_LaunchDTO(
      {required this.id,
      required this.name,
      @FlightNumberConverter() required this.flightNumber,
      @DateTimeConverter() required this.launchDate,
      required this.images,
      required this.patchUrl,
      required this.details})
      : super._();

  factory _$_LaunchDTO.fromJson(Map<String, dynamic> json) =>
      _$$_LaunchDTOFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @FlightNumberConverter()
  final String flightNumber;
  @override
  @DateTimeConverter()
  final DateTime launchDate;
  @override
  final List<String> images;
  @override
  final String patchUrl;
  @override
  final String details;

  @override
  String toString() {
    return 'LaunchDTO(id: $id, name: $name, flightNumber: $flightNumber, launchDate: $launchDate, images: $images, patchUrl: $patchUrl, details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LaunchDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.flightNumber, flightNumber) ||
                const DeepCollectionEquality()
                    .equals(other.flightNumber, flightNumber)) &&
            (identical(other.launchDate, launchDate) ||
                const DeepCollectionEquality()
                    .equals(other.launchDate, launchDate)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.patchUrl, patchUrl) ||
                const DeepCollectionEquality()
                    .equals(other.patchUrl, patchUrl)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality().equals(other.details, details)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(flightNumber) ^
      const DeepCollectionEquality().hash(launchDate) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(patchUrl) ^
      const DeepCollectionEquality().hash(details);

  @JsonKey(ignore: true)
  @override
  _$LaunchDTOCopyWith<_LaunchDTO> get copyWith =>
      __$LaunchDTOCopyWithImpl<_LaunchDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LaunchDTOToJson(this);
  }
}

abstract class _LaunchDTO extends LaunchDTO {
  const factory _LaunchDTO(
      {required String id,
      required String name,
      @FlightNumberConverter() required String flightNumber,
      @DateTimeConverter() required DateTime launchDate,
      required List<String> images,
      required String patchUrl,
      required String details}) = _$_LaunchDTO;
  const _LaunchDTO._() : super._();

  factory _LaunchDTO.fromJson(Map<String, dynamic> json) =
      _$_LaunchDTO.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @FlightNumberConverter()
  String get flightNumber => throw _privateConstructorUsedError;
  @override
  @DateTimeConverter()
  DateTime get launchDate => throw _privateConstructorUsedError;
  @override
  List<String> get images => throw _privateConstructorUsedError;
  @override
  String get patchUrl => throw _privateConstructorUsedError;
  @override
  String get details => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LaunchDTOCopyWith<_LaunchDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
