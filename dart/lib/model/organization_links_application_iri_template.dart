//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OrganizationLinksApplicationIriTemplate {
  /// Returns a new [OrganizationLinksApplicationIriTemplate] instance.
  OrganizationLinksApplicationIriTemplate({
    this.mapping,
  });

  /// Returns a new [OrganizationLinksApplicationIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationLinksApplicationIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OrganizationLinksApplicationIriTemplate(
      mapping:
          ApplicationLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  ApplicationLinksSelfIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksApplicationIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<OrganizationLinksApplicationIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <OrganizationLinksApplicationIriTemplate>[];
    }

    return json.fold(<OrganizationLinksApplicationIriTemplate>[],
        (List<OrganizationLinksApplicationIriTemplate> previousValue, element) {
      final OrganizationLinksApplicationIriTemplate? object =
          OrganizationLinksApplicationIriTemplate.fromJson(element);
      if (object is OrganizationLinksApplicationIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OrganizationLinksApplicationIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OrganizationLinksApplicationIriTemplate>{};
    }

    return json.entries
        .fold(<String, OrganizationLinksApplicationIriTemplate>{},
            (Map<String, OrganizationLinksApplicationIriTemplate> previousValue,
                element) {
      final OrganizationLinksApplicationIriTemplate? object =
          OrganizationLinksApplicationIriTemplate.fromJson(element.value);
      if (object is OrganizationLinksApplicationIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OrganizationLinksApplicationIriTemplate-objects as value to a dart map
  static Map<String, List<OrganizationLinksApplicationIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OrganizationLinksApplicationIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OrganizationLinksApplicationIriTemplate>>(
          key, OrganizationLinksApplicationIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OrganizationLinksApplicationIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
