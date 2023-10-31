//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OrganizationLinksBusinessActivityIriTemplate {
  /// Returns a new [OrganizationLinksBusinessActivityIriTemplate] instance.
  OrganizationLinksBusinessActivityIriTemplate({
    this.mapping,
  });

  /// Returns a new [OrganizationLinksBusinessActivityIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationLinksBusinessActivityIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OrganizationLinksBusinessActivityIriTemplate(
      mapping: BusinessActivityLinksImageIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  BusinessActivityLinksImageIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksBusinessActivityIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<OrganizationLinksBusinessActivityIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <OrganizationLinksBusinessActivityIriTemplate>[];
    }

    return json.fold(<OrganizationLinksBusinessActivityIriTemplate>[],
        (List<OrganizationLinksBusinessActivityIriTemplate> previousValue,
            element) {
      final OrganizationLinksBusinessActivityIriTemplate? object =
          OrganizationLinksBusinessActivityIriTemplate.fromJson(element);
      if (object is OrganizationLinksBusinessActivityIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OrganizationLinksBusinessActivityIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OrganizationLinksBusinessActivityIriTemplate>{};
    }

    return json.entries
        .fold(<String, OrganizationLinksBusinessActivityIriTemplate>{},
            (Map<String, OrganizationLinksBusinessActivityIriTemplate>
                    previousValue,
                element) {
      final OrganizationLinksBusinessActivityIriTemplate? object =
          OrganizationLinksBusinessActivityIriTemplate.fromJson(element.value);
      if (object is OrganizationLinksBusinessActivityIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OrganizationLinksBusinessActivityIriTemplate-objects as value to a dart map
  static Map<String, List<OrganizationLinksBusinessActivityIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OrganizationLinksBusinessActivityIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String,
              List<OrganizationLinksBusinessActivityIriTemplate>>(key,
          OrganizationLinksBusinessActivityIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OrganizationLinksBusinessActivityIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
