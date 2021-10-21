// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'launch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LaunchTearOff {
  const _$LaunchTearOff();

  _Launch call(
      {required UniqueId id,
      required LaunchName name,
      required FlightNumber flightNumber,
      required LaunchDate launchDate,
      required ImageUrl patchUrl,
      required List<ImageUrl> images,
      required LaunchDetails details}) {
    return _Launch(
      id: id,
      name: name,
      flightNumber: flightNumber,
      launchDate: launchDate,
      patchUrl: patchUrl,
      images: images,
      details: details,
    );
  }
}

/// @nodoc
const $Launch = _$LaunchTearOff();

/// @nodoc
mixin _$Launch {
  UniqueId get id => throw _privateConstructorUsedError;
  LaunchName get name => throw _privateConstructorUsedError;
  FlightNumber get flightNumber => throw _privateConstructorUsedError;
  LaunchDate get launchDate => throw _privateConstructorUsedError;
  ImageUrl get patchUrl => throw _privateConstructorUsedError;
  List<ImageUrl> get images => throw _privateConstructorUsedError;
  LaunchDetails get details => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LaunchCopyWith<Launch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchCopyWith<$Res> {
  factory $LaunchCopyWith(Launch value, $Res Function(Launch) then) =
      _$LaunchCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      LaunchName name,
      FlightNumber flightNumber,
      LaunchDate launchDate,
      ImageUrl patchUrl,
      List<ImageUrl> images,
      LaunchDetails details});
}

/// @nodoc
class _$LaunchCopyWithImpl<$Res> implements $LaunchCopyWith<$Res> {
  _$LaunchCopyWithImpl(this._value, this._then);

  final Launch _value;
  // ignore: unused_field
  final $Res Function(Launch) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? flightNumber = freezed,
    Object? launchDate = freezed,
    Object? patchUrl = freezed,
    Object? images = freezed,
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as LaunchName,
      flightNumber: flightNumber == freezed
          ? _value.flightNumber
          : flightNumber // ignore: cast_nullable_to_non_nullable
              as FlightNumber,
      launchDate: launchDate == freezed
          ? _value.launchDate
          : launchDate // ignore: cast_nullable_to_non_nullable
              as LaunchDate,
      patchUrl: patchUrl == freezed
          ? _value.patchUrl
          : patchUrl // ignore: cast_nullable_to_non_nullable
              as ImageUrl,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageUrl>,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as LaunchDetails,
    ));
  }
}

/// @nodoc
abstract class _$LaunchCopyWith<$Res> implements $LaunchCopyWith<$Res> {
  factory _$LaunchCopyWith(_Launch value, $Res Function(_Launch) then) =
      __$LaunchCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      LaunchName name,
      FlightNumber flightNumber,
      LaunchDate launchDate,
      ImageUrl patchUrl,
      List<ImageUrl> images,
      LaunchDetails details});
}

/// @nodoc
class __$LaunchCopyWithImpl<$Res> extends _$LaunchCopyWithImpl<$Res>
    implements _$LaunchCopyWith<$Res> {
  __$LaunchCopyWithImpl(_Launch _value, $Res Function(_Launch) _then)
      : super(_value, (v) => _then(v as _Launch));

  @override
  _Launch get _value => super._value as _Launch;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? flightNumber = freezed,
    Object? launchDate = freezed,
    Object? patchUrl = freezed,
    Object? images = freezed,
    Object? details = freezed,
  }) {
    return _then(_Launch(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as LaunchName,
      flightNumber: flightNumber == freezed
          ? _value.flightNumber
          : flightNumber // ignore: cast_nullable_to_non_nullable
              as FlightNumber,
      launchDate: launchDate == freezed
          ? _value.launchDate
          : launchDate // ignore: cast_nullable_to_non_nullable
              as LaunchDate,
      patchUrl: patchUrl == freezed
          ? _value.patchUrl
          : patchUrl // ignore: cast_nullable_to_non_nullable
              as ImageUrl,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageUrl>,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as LaunchDetails,
    ));
  }
}

/// @nodoc

class _$_Launch extends _Launch {
  const _$_Launch(
      {required this.id,
      required this.name,
      required this.flightNumber,
      required this.launchDate,
      required this.patchUrl,
      required this.images,
      required this.details})
      : super._();

  @override
  final UniqueId id;
  @override
  final LaunchName name;
  @override
  final FlightNumber flightNumber;
  @override
  final LaunchDate launchDate;
  @override
  final ImageUrl patchUrl;
  @override
  final List<ImageUrl> images;
  @override
  final LaunchDetails details;

  @override
  String toString() {
    return 'Launch(id: $id, name: $name, flightNumber: $flightNumber, launchDate: $launchDate, patchUrl: $patchUrl, images: $images, details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Launch &&
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
            (identical(other.patchUrl, patchUrl) ||
                const DeepCollectionEquality()
                    .equals(other.patchUrl, patchUrl)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
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
      const DeepCollectionEquality().hash(patchUrl) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(details);

  @JsonKey(ignore: true)
  @override
  _$LaunchCopyWith<_Launch> get copyWith =>
      __$LaunchCopyWithImpl<_Launch>(this, _$identity);
}

abstract class _Launch extends Launch {
  const factory _Launch(
      {required UniqueId id,
      required LaunchName name,
      required FlightNumber flightNumber,
      required LaunchDate launchDate,
      required ImageUrl patchUrl,
      required List<ImageUrl> images,
      required LaunchDetails details}) = _$_Launch;
  const _Launch._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  LaunchName get name => throw _privateConstructorUsedError;
  @override
  FlightNumber get flightNumber => throw _privateConstructorUsedError;
  @override
  LaunchDate get launchDate => throw _privateConstructorUsedError;
  @override
  ImageUrl get patchUrl => throw _privateConstructorUsedError;
  @override
  List<ImageUrl> get images => throw _privateConstructorUsedError;
  @override
  LaunchDetails get details => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LaunchCopyWith<_Launch> get copyWith => throw _privateConstructorUsedError;
}
