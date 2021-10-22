// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LaunchDTO _$$_LaunchDTOFromJson(Map<String, dynamic> json) => _$_LaunchDTO(
      id: json['id'] as String,
      name: json['name'] as String,
      flightNumber: const FlightNumberConverter()
          .fromJson(json['flightNumber'] as String),
      launchDate:
          const DateTimeConverter().fromJson(json['launchDate'] as String),
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      patchUrl: json['patchUrl'] as String,
      details: json['details'] as String,
      siteName: json['siteName'] as String,
    );

Map<String, dynamic> _$$_LaunchDTOToJson(_$_LaunchDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'flightNumber':
          const FlightNumberConverter().toJson(instance.flightNumber),
      'launchDate': const DateTimeConverter().toJson(instance.launchDate),
      'images': instance.images,
      'patchUrl': instance.patchUrl,
      'details': instance.details,
      'siteName': instance.siteName,
    };
