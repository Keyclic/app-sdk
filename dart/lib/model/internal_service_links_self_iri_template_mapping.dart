//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class InternalServiceLinksSelfIriTemplateMapping {
  /// Returns a new [InternalServiceLinksSelfIriTemplateMapping] instance.
  InternalServiceLinksSelfIriTemplateMapping({
    this.internalService,
  });

  /// Returns a new [InternalServiceLinksSelfIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory InternalServiceLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InternalServiceLinksSelfIriTemplateMapping(
      internalService: json[r'internalService'],
    );
  }

  String internalService;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServiceLinksSelfIriTemplateMapping &&
        other.internalService == internalService;
  }

  @override
  int get hashCode => (internalService == null ? 0 : internalService.hashCode);

  static List<InternalServiceLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return <InternalServiceLinksSelfIriTemplateMapping>[
      if (json is List)
        for (dynamic value in json)
          InternalServiceLinksSelfIriTemplateMapping.fromJson(value),
    ];
  }

  static Map<String, InternalServiceLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return <String, InternalServiceLinksSelfIriTemplateMapping>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              InternalServiceLinksSelfIriTemplateMapping.fromJson(entry.value),
    };
  }

  // maps a json object with a list of InternalServiceLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<InternalServiceLinksSelfIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic> json) {
    return <String, List<InternalServiceLinksSelfIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: InternalServiceLinksSelfIriTemplateMapping.listFromJson(
              entry.value),
    };
  }

  @override
  String toString() =>
      'InternalServiceLinksSelfIriTemplateMapping[internalService=$internalService]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (internalService != null) r'internalService': internalService,
    };
  }
}
