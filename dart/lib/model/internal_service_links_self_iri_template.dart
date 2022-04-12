//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class InternalServiceLinksSelfIriTemplate {
  /// Returns a new [InternalServiceLinksSelfIriTemplate] instance.
  InternalServiceLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [InternalServiceLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory InternalServiceLinksSelfIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InternalServiceLinksSelfIriTemplate(
      mapping:
          InternalServiceLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  InternalServiceLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServiceLinksSelfIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<InternalServiceLinksSelfIriTemplate> listFromJson(
      List<dynamic> json) {
    return <InternalServiceLinksSelfIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          InternalServiceLinksSelfIriTemplate.fromJson(value),
    ];
  }

  static Map<String, InternalServiceLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, InternalServiceLinksSelfIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: InternalServiceLinksSelfIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of InternalServiceLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<InternalServiceLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<InternalServiceLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              InternalServiceLinksSelfIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'InternalServiceLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
