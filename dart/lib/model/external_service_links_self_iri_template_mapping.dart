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
  static ExternalServiceLinksSelfIriTemplateMapping? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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
      Iterable? json) {
    if (json == null) {
      return <ExternalServiceLinksSelfIriTemplateMapping>[];
    }

    return json.fold(<ExternalServiceLinksSelfIriTemplateMapping>[],
        (List<ExternalServiceLinksSelfIriTemplateMapping> previousValue,
            element) {
      final ExternalServiceLinksSelfIriTemplateMapping? object =
          ExternalServiceLinksSelfIriTemplateMapping.fromJson(element);
      if (object is ExternalServiceLinksSelfIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ExternalServiceLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ExternalServiceLinksSelfIriTemplateMapping>{};
    }

    return json.entries.fold(
        <String, ExternalServiceLinksSelfIriTemplateMapping>{},
        (Map<String, ExternalServiceLinksSelfIriTemplateMapping> previousValue,
            element) {
      final ExternalServiceLinksSelfIriTemplateMapping? object =
          ExternalServiceLinksSelfIriTemplateMapping.fromJson(element.value);
      if (object is ExternalServiceLinksSelfIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ExternalServiceLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<ExternalServiceLinksSelfIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ExternalServiceLinksSelfIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ExternalServiceLinksSelfIriTemplateMapping>>(
          key, ExternalServiceLinksSelfIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ExternalServiceLinksSelfIriTemplateMapping[externalService=$externalService]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'externalService'))
        r'externalService': externalService,
    };
  }
}
