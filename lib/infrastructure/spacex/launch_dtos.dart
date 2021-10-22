import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spacex_launches/domain/spacex/launch.dart';
import 'package:spacex_launches/domain/spacex/value_objects.dart';

part 'launch_dtos.freezed.dart';
part 'launch_dtos.g.dart';

@freezed
class LaunchDTO with _$LaunchDTO {
  const factory LaunchDTO({
    required String id,
    required String name,
    @FlightNumberConverter() required String flightNumber,
    @DateTimeConverter() required DateTime launchDate,
    required List<String> images,
    required String patchUrl,
    required String details,
    required String siteName,
  }) = _LaunchDTO;

  const LaunchDTO._();

  factory LaunchDTO.fromGraphQL(Map<String, dynamic> json) {
    final simplifiedJson = <String, dynamic>{
      'id': json['id'],
      'name': json['mission_name'],
      'flightNumber': json['id'],
      'launchDate': json['launch_date_utc'],
      'images': json['links']['flickr_images'],
      'patchUrl': json['links']['mission_patch_small'] ?? '',
      'details': json['details'] ?? '',
      'siteName': json['launch_site']['site_name'] ?? '',
    };
    return LaunchDTO.fromJson(simplifiedJson);
  }

  factory LaunchDTO.fromJson(Map<String, dynamic> json) => _$LaunchDTOFromJson(json);

  Launch toDomain() => Launch(
        id: UniqueId.fromUniqueString(id),
        name: LaunchName(name),
        flightNumber: FlightNumber(flightNumber),
        launchDate: LaunchDate(launchDate),
        images: images.map((e) => ImageUrl(e)).toList(),
        patchUrl: ImageUrl(patchUrl),
        details: LaunchDetails(details),
        siteName: SiteName(siteName),
      );
}

class FlightNumberConverter implements JsonConverter<String, String> {
  const FlightNumberConverter();

  @override
  String fromJson(String str) => "#${str.padLeft(3, '0')}";

  @override
  String toJson(String str) => str.substring(1);
}

class DateTimeConverter implements JsonConverter<DateTime, String> {
  const DateTimeConverter();

  @override
  DateTime fromJson(String json) => DateTime.parse(json);

  @override
  String toJson(DateTime value) => value.toIso8601String();
}
