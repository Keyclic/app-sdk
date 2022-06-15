//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ExternalServiceLinksSelfIriTemplate {
  /// Returns a new [ExternalServiceLinksSelfIriTemplate] instance.
  ExternalServiceLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [ExternalServiceLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ExternalServiceLinksSelfIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ExternalServiceLinksSelfIriTemplate(
      mapping:
          ExternalServiceLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  ExternalServiceLinksSelfIriTemplateMapping? mapping;

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
      List<dynamic>? json) {
    if (json == null) {
      return <ExternalServiceLinksSelfIriTemplate>[];
    }
    return json
        .map((value) {
          return ExternalServiceLinksSelfIriTemplate.fromJson(value);
        })
        .whereType<ExternalServiceLinksSelfIriTemplate>()
        .toList();
  }

  static Map<String, ExternalServiceLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ExternalServiceLinksSelfIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ExternalServiceLinksSelfIriTemplate?>(
            key, ExternalServiceLinksSelfIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ExternalServiceLinksSelfIriTemplate>;
  }

  // maps a json object with a list of ExternalServiceLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<ExternalServiceLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ExternalServiceLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
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
