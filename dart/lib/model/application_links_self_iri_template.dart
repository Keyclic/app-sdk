//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ApplicationLinksSelfIriTemplate {
  /// Returns a new [ApplicationLinksSelfIriTemplate] instance.
  ApplicationLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [ApplicationLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ApplicationLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ApplicationLinksSelfIriTemplate(
      mapping:
          ApplicationLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  ApplicationLinksSelfIriTemplateMapping mapping;

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
      List<dynamic> json) {
    return <ApplicationLinksSelfIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          ApplicationLinksSelfIriTemplate.fromJson(value),
    ];
  }

  static Map<String, ApplicationLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ApplicationLinksSelfIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ApplicationLinksSelfIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ApplicationLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<ApplicationLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ApplicationLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
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
