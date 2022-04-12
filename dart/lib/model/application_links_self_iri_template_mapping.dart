//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ApplicationLinksSelfIriTemplateMapping {
  /// Returns a new [ApplicationLinksSelfIriTemplateMapping] instance.
  ApplicationLinksSelfIriTemplateMapping({
    this.application,
  });

  /// Returns a new [ApplicationLinksSelfIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ApplicationLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ApplicationLinksSelfIriTemplateMapping(
      application: json[r'application'],
    );
  }

  String application;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ApplicationLinksSelfIriTemplateMapping &&
        other.application == application;
  }

  @override
  int get hashCode => (application == null ? 0 : application.hashCode);

  static List<ApplicationLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return <ApplicationLinksSelfIriTemplateMapping>[
      if (json is List)
        for (dynamic value in json)
          ApplicationLinksSelfIriTemplateMapping.fromJson(value),
    ];
  }

  static Map<String, ApplicationLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ApplicationLinksSelfIriTemplateMapping>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              ApplicationLinksSelfIriTemplateMapping.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ApplicationLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<ApplicationLinksSelfIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic> json) {
    return <String, List<ApplicationLinksSelfIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              ApplicationLinksSelfIriTemplateMapping.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ApplicationLinksSelfIriTemplateMapping[application=$application]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (application != null) r'application': application,
    };
  }
}
