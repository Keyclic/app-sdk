//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ExternalServiceLinksSelfIriTemplateMapping {
  /// Returns a new [ExternalServiceLinksSelfIriTemplateMapping] instance.
  ExternalServiceLinksSelfIriTemplateMapping({
    this.externalService,
  });

  /// Returns a new [ExternalServiceLinksSelfIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ExternalServiceLinksSelfIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ExternalServiceLinksSelfIriTemplateMapping(
      externalService: json[r'externalService'],
    );
  }

  String? externalService;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalServiceLinksSelfIriTemplateMapping &&
        other.externalService == externalService;
  }

  @override
  int get hashCode => (externalService == null ? 0 : externalService.hashCode);

  static List<ExternalServiceLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ExternalServiceLinksSelfIriTemplateMapping>[];
    }
    return json
        .map((value) {
          return ExternalServiceLinksSelfIriTemplateMapping.fromJson(value);
        })
        .whereType<ExternalServiceLinksSelfIriTemplateMapping>()
        .toList();
  }

  static Map<String, ExternalServiceLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ExternalServiceLinksSelfIriTemplateMapping>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ExternalServiceLinksSelfIriTemplateMapping?>(
            key, ExternalServiceLinksSelfIriTemplateMapping.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ExternalServiceLinksSelfIriTemplateMapping>;
  }

  // maps a json object with a list of ExternalServiceLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<ExternalServiceLinksSelfIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<ExternalServiceLinksSelfIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ExternalServiceLinksSelfIriTemplateMapping.listFromJson(
              entry.value),
    };
  }

  @override
  String toString() =>
      'ExternalServiceLinksSelfIriTemplateMapping[externalService=$externalService]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (externalService != null) r'externalService': externalService,
    };
  }
}
