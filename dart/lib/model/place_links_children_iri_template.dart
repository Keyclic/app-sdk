//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlaceLinksChildrenIriTemplate {
  /// Returns a new [PlaceLinksChildrenIriTemplate] instance.
  PlaceLinksChildrenIriTemplate({
    this.mapping,
  });

  /// Returns a new [PlaceLinksChildrenIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceLinksChildrenIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PlaceLinksChildrenIriTemplate(
      mapping: PlaceLinksChildrenIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  PlaceLinksChildrenIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksChildrenIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<PlaceLinksChildrenIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PlaceLinksChildrenIriTemplate>[];
    }

    return json.fold(<PlaceLinksChildrenIriTemplate>[],
        (List<PlaceLinksChildrenIriTemplate> previousValue, element) {
      final PlaceLinksChildrenIriTemplate? object =
          PlaceLinksChildrenIriTemplate.fromJson(element);
      if (object is PlaceLinksChildrenIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlaceLinksChildrenIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceLinksChildrenIriTemplate>{};
    }

    return json.entries.fold(<String, PlaceLinksChildrenIriTemplate>{},
        (Map<String, PlaceLinksChildrenIriTemplate> previousValue, element) {
      final PlaceLinksChildrenIriTemplate? object =
          PlaceLinksChildrenIriTemplate.fromJson(element.value);
      if (object is PlaceLinksChildrenIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlaceLinksChildrenIriTemplate-objects as value to a dart map
  static Map<String, List<PlaceLinksChildrenIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlaceLinksChildrenIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlaceLinksChildrenIriTemplate>>(
          key, PlaceLinksChildrenIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'PlaceLinksChildrenIriTemplate[mapping=$mapping]';

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
