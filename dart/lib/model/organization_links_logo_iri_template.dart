//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OrganizationLinksLogoIriTemplate {
  /// Returns a new [OrganizationLinksLogoIriTemplate] instance.
  OrganizationLinksLogoIriTemplate({
    this.mapping,
  });

  /// Returns a new [OrganizationLinksLogoIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationLinksLogoIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OrganizationLinksLogoIriTemplate(
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

    return other is OrganizationLinksLogoIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<OrganizationLinksLogoIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <OrganizationLinksLogoIriTemplate>[];
    }

    return json.fold(<OrganizationLinksLogoIriTemplate>[],
        (List<OrganizationLinksLogoIriTemplate> previousValue, element) {
      final OrganizationLinksLogoIriTemplate? object =
          OrganizationLinksLogoIriTemplate.fromJson(element);
      if (object is OrganizationLinksLogoIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OrganizationLinksLogoIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OrganizationLinksLogoIriTemplate>{};
    }

    return json.entries.fold(<String, OrganizationLinksLogoIriTemplate>{},
        (Map<String, OrganizationLinksLogoIriTemplate> previousValue, element) {
      final OrganizationLinksLogoIriTemplate? object =
          OrganizationLinksLogoIriTemplate.fromJson(element.value);
      if (object is OrganizationLinksLogoIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OrganizationLinksLogoIriTemplate-objects as value to a dart map
  static Map<String, List<OrganizationLinksLogoIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OrganizationLinksLogoIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OrganizationLinksLogoIriTemplate>>(
          key, OrganizationLinksLogoIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'OrganizationLinksLogoIriTemplate[mapping=$mapping]';

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
