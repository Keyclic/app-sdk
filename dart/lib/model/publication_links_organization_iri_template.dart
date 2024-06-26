//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PublicationLinksOrganizationIriTemplate {
  /// Returns a new [PublicationLinksOrganizationIriTemplate] instance.
  PublicationLinksOrganizationIriTemplate({
    this.mapping,
  });

  /// Returns a new [PublicationLinksOrganizationIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PublicationLinksOrganizationIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PublicationLinksOrganizationIriTemplate(
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

    return other is PublicationLinksOrganizationIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<PublicationLinksOrganizationIriTemplate> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <PublicationLinksOrganizationIriTemplate>[];
    }

    return json.fold(<PublicationLinksOrganizationIriTemplate>[],
        (List<PublicationLinksOrganizationIriTemplate> previousValue, element) {
      final PublicationLinksOrganizationIriTemplate? object =
          PublicationLinksOrganizationIriTemplate.fromJson(element);
      if (object is PublicationLinksOrganizationIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PublicationLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PublicationLinksOrganizationIriTemplate>{};
    }

    return json.entries
        .fold(<String, PublicationLinksOrganizationIriTemplate>{},
            (Map<String, PublicationLinksOrganizationIriTemplate> previousValue,
                element) {
      final PublicationLinksOrganizationIriTemplate? object =
          PublicationLinksOrganizationIriTemplate.fromJson(element.value);
      if (object is PublicationLinksOrganizationIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PublicationLinksOrganizationIriTemplate-objects as value to a dart map
  static Map<String, List<PublicationLinksOrganizationIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PublicationLinksOrganizationIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PublicationLinksOrganizationIriTemplate>>(
          key, PublicationLinksOrganizationIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PublicationLinksOrganizationIriTemplate[mapping=$mapping]';

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
