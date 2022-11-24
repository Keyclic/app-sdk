//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ExternalServiceLinksSelfIriTemplate {
  /// Returns a new [ExternalServiceLinksSelfIriTemplate] instance.
  ExternalServiceLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [ExternalServiceLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ExternalServiceLinksSelfIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ExternalServiceLinksSelfIriTemplate(
      mapping:
          ExternalServiceLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  ExternalServiceLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalServiceLinksSelfIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ExternalServiceLinksSelfIriTemplate> listFromJson(
      List<dynamic> json) {
    return <ExternalServiceLinksSelfIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          ExternalServiceLinksSelfIriTemplate.fromJson(value),
    ];
  }

  static Map<String, ExternalServiceLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ExternalServiceLinksSelfIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ExternalServiceLinksSelfIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ExternalServiceLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<ExternalServiceLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ExternalServiceLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              ExternalServiceLinksSelfIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ExternalServiceLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
