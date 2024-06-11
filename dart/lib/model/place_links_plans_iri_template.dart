//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlaceLinksPlansIriTemplate {
  /// Returns a new [PlaceLinksPlansIriTemplate] instance.
  PlaceLinksPlansIriTemplate({
    this.mapping,
  });

  /// Returns a new [PlaceLinksPlansIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceLinksPlansIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PlaceLinksPlansIriTemplate(
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

    return other is PlaceLinksPlansIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<PlaceLinksPlansIriTemplate> listFromJson(Iterable? json) {
    if (json == null) {
      return <PlaceLinksPlansIriTemplate>[];
    }

    return json.fold(<PlaceLinksPlansIriTemplate>[],
        (List<PlaceLinksPlansIriTemplate> previousValue, element) {
      final PlaceLinksPlansIriTemplate? object =
          PlaceLinksPlansIriTemplate.fromJson(element);
      if (object is PlaceLinksPlansIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlaceLinksPlansIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceLinksPlansIriTemplate>{};
    }

    return json.entries.fold(<String, PlaceLinksPlansIriTemplate>{},
        (Map<String, PlaceLinksPlansIriTemplate> previousValue, element) {
      final PlaceLinksPlansIriTemplate? object =
          PlaceLinksPlansIriTemplate.fromJson(element.value);
      if (object is PlaceLinksPlansIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlaceLinksPlansIriTemplate-objects as value to a dart map
  static Map<String, List<PlaceLinksPlansIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlaceLinksPlansIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlaceLinksPlansIriTemplate>>(
          key, PlaceLinksPlansIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'PlaceLinksPlansIriTemplate[mapping=$mapping]';

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
