//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlaceLinksSelfIriTemplate {
  /// Returns a new [PlaceLinksSelfIriTemplate] instance.
  PlaceLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [PlaceLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceLinksSelfIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlaceLinksSelfIriTemplate(
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

    return other is PlaceLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<PlaceLinksSelfIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PlaceLinksSelfIriTemplate>[];
    }

    return json.fold(<PlaceLinksSelfIriTemplate>[],
        (List<PlaceLinksSelfIriTemplate> previousValue, element) {
      final PlaceLinksSelfIriTemplate? object =
          PlaceLinksSelfIriTemplate.fromJson(element);
      if (object is PlaceLinksSelfIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlaceLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceLinksSelfIriTemplate>{};
    }

    return json.entries.fold(<String, PlaceLinksSelfIriTemplate>{},
        (Map<String, PlaceLinksSelfIriTemplate> previousValue, element) {
      final PlaceLinksSelfIriTemplate? object =
          PlaceLinksSelfIriTemplate.fromJson(element.value);
      if (object is PlaceLinksSelfIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlaceLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<PlaceLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlaceLinksSelfIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlaceLinksSelfIriTemplate>>(
          key, PlaceLinksSelfIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'PlaceLinksSelfIriTemplate[mapping=$mapping]';

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
