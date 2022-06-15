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

    return other is ApplicationLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ApplicationLinksSelfIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ApplicationLinksSelfIriTemplate>[];
    }
    return json
        .map((value) {
          return ApplicationLinksSelfIriTemplate.fromJson(value);
        })
        .whereType<ApplicationLinksSelfIriTemplate>()
        .toList();
  }

  static Map<String, ApplicationLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ApplicationLinksSelfIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ApplicationLinksSelfIriTemplate?>(
            key, ApplicationLinksSelfIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ApplicationLinksSelfIriTemplate>;
  }

  // maps a json object with a list of ApplicationLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<ApplicationLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ApplicationLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ApplicationLinksSelfIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ApplicationLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
