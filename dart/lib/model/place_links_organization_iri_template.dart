//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlaceLinksOrganizationIriTemplate {
  /// Returns a new [PlaceLinksOrganizationIriTemplate] instance.
  PlaceLinksOrganizationIriTemplate({
    this.mapping,
  });

  /// Returns a new [PlaceLinksOrganizationIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceLinksOrganizationIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PlaceLinksOrganizationIriTemplate(
      mapping: CategoryLinksOrganizationIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  CategoryLinksOrganizationIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksOrganizationIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<PlaceLinksOrganizationIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <PlaceLinksOrganizationIriTemplate>[];
    }

    return json.fold(<PlaceLinksOrganizationIriTemplate>[],
        (List<PlaceLinksOrganizationIriTemplate> previousValue, element) {
      final PlaceLinksOrganizationIriTemplate? object =
          PlaceLinksOrganizationIriTemplate.fromJson(element);
      if (object is PlaceLinksOrganizationIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlaceLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceLinksOrganizationIriTemplate>{};
    }

    return json.entries.fold(<String, PlaceLinksOrganizationIriTemplate>{},
        (Map<String, PlaceLinksOrganizationIriTemplate> previousValue,
            element) {
      final PlaceLinksOrganizationIriTemplate? object =
          PlaceLinksOrganizationIriTemplate.fromJson(element.value);
      if (object is PlaceLinksOrganizationIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlaceLinksOrganizationIriTemplate-objects as value to a dart map
  static Map<String, List<PlaceLinksOrganizationIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlaceLinksOrganizationIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlaceLinksOrganizationIriTemplate>>(
          key, PlaceLinksOrganizationIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'PlaceLinksOrganizationIriTemplate[mapping=$mapping]';

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
