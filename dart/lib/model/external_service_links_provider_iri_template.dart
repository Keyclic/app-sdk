//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ExternalServiceLinksProviderIriTemplate {
  /// Returns a new [ExternalServiceLinksProviderIriTemplate] instance.
  ExternalServiceLinksProviderIriTemplate({
    this.mapping,
  });

  /// Returns a new [ExternalServiceLinksProviderIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ExternalServiceLinksProviderIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ExternalServiceLinksProviderIriTemplate(
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

    return other is ExternalServiceLinksProviderIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ExternalServiceLinksProviderIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ExternalServiceLinksProviderIriTemplate>[];
    }
    return json
        .map((value) {
          return ExternalServiceLinksProviderIriTemplate.fromJson(value);
        })
        .whereType<ExternalServiceLinksProviderIriTemplate>()
        .toList();
  }

  static Map<String, ExternalServiceLinksProviderIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ExternalServiceLinksProviderIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ExternalServiceLinksProviderIriTemplate?>(
            key, ExternalServiceLinksProviderIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ExternalServiceLinksProviderIriTemplate>;
  }

  // maps a json object with a list of ExternalServiceLinksProviderIriTemplate-objects as value to a dart map
  static Map<String, List<ExternalServiceLinksProviderIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<ExternalServiceLinksProviderIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              ExternalServiceLinksProviderIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ExternalServiceLinksProviderIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
