//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ApplicationLinksSelfIriTemplate {
  /// Returns a new [ApplicationLinksSelfIriTemplate] instance.
  ApplicationLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [ApplicationLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ApplicationLinksSelfIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ApplicationLinksSelfIriTemplate(
      mapping: json[r'mapping'] is! Map
          ? null
          : ApplicationLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  ApplicationLinksSelfIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ApplicationLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ApplicationLinksSelfIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ApplicationLinksSelfIriTemplate>[];
    }

    return json.fold(<ApplicationLinksSelfIriTemplate>[],
        (List<ApplicationLinksSelfIriTemplate> previousValue, element) {
      final ApplicationLinksSelfIriTemplate? object =
          ApplicationLinksSelfIriTemplate.fromJson(element);
      if (object is ApplicationLinksSelfIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ApplicationLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ApplicationLinksSelfIriTemplate>{};
    }

    return json.entries.fold(<String, ApplicationLinksSelfIriTemplate>{},
        (Map<String, ApplicationLinksSelfIriTemplate> previousValue, element) {
      final ApplicationLinksSelfIriTemplate? object =
          ApplicationLinksSelfIriTemplate.fromJson(element.value);
      if (object is ApplicationLinksSelfIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ApplicationLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<ApplicationLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ApplicationLinksSelfIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ApplicationLinksSelfIriTemplate>>(
          key, ApplicationLinksSelfIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'ApplicationLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
