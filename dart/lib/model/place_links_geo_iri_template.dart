//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlaceLinksGeoIriTemplate {
  /// Returns a new [PlaceLinksGeoIriTemplate] instance.
  PlaceLinksGeoIriTemplate({
    this.mapping,
  });

  /// Returns a new [PlaceLinksGeoIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceLinksGeoIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PlaceLinksGeoIriTemplate(
      mapping: BookmarkLinksPlaceIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  BookmarkLinksPlaceIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksGeoIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<PlaceLinksGeoIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PlaceLinksGeoIriTemplate>[];
    }

    return json.fold(<PlaceLinksGeoIriTemplate>[],
        (List<PlaceLinksGeoIriTemplate> previousValue, element) {
      final PlaceLinksGeoIriTemplate? object =
          PlaceLinksGeoIriTemplate.fromJson(element);
      if (object is PlaceLinksGeoIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlaceLinksGeoIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceLinksGeoIriTemplate>{};
    }

    return json.entries.fold(<String, PlaceLinksGeoIriTemplate>{},
        (Map<String, PlaceLinksGeoIriTemplate> previousValue, element) {
      final PlaceLinksGeoIriTemplate? object =
          PlaceLinksGeoIriTemplate.fromJson(element.value);
      if (object is PlaceLinksGeoIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlaceLinksGeoIriTemplate-objects as value to a dart map
  static Map<String, List<PlaceLinksGeoIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlaceLinksGeoIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlaceLinksGeoIriTemplate>>(
          key, PlaceLinksGeoIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'PlaceLinksGeoIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^mapping\.').hasMatch(key)))
        r'mapping': mapping?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^mapping\.'))) {
            previousValue.add(element.split(RegExp(r'^mapping\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
