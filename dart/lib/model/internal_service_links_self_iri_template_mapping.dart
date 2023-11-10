//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class InternalServiceLinksSelfIriTemplateMapping {
  /// Returns a new [InternalServiceLinksSelfIriTemplateMapping] instance.
  InternalServiceLinksSelfIriTemplateMapping({
    this.internalService,
  });

  /// Returns a new [InternalServiceLinksSelfIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InternalServiceLinksSelfIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalServiceLinksSelfIriTemplateMapping(
      internalService: json[r'internalService'],
    );
  }

  String? internalService;

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
      List<dynamic>? json) {
    if (json == null) {
      return <InternalServiceLinksSelfIriTemplateMapping>[];
    }

    return json.fold(<InternalServiceLinksSelfIriTemplateMapping>[],
        (List<InternalServiceLinksSelfIriTemplateMapping> previousValue,
            element) {
      final InternalServiceLinksSelfIriTemplateMapping? object =
          InternalServiceLinksSelfIriTemplateMapping.fromJson(element);
      if (object is InternalServiceLinksSelfIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, InternalServiceLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, InternalServiceLinksSelfIriTemplateMapping>{};
    }

    return json.entries.fold(
        <String, InternalServiceLinksSelfIriTemplateMapping>{},
        (Map<String, InternalServiceLinksSelfIriTemplateMapping> previousValue,
            element) {
      final InternalServiceLinksSelfIriTemplateMapping? object =
          InternalServiceLinksSelfIriTemplateMapping.fromJson(element.value);
      if (object is InternalServiceLinksSelfIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of InternalServiceLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<InternalServiceLinksSelfIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<InternalServiceLinksSelfIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<InternalServiceLinksSelfIriTemplateMapping>>(
          key, InternalServiceLinksSelfIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'InternalServiceLinksSelfIriTemplateMapping[internalService=$internalService]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && internalService != null) ||
          (keys?.contains(r'internalService') ?? false))
        r'internalService': internalService,
    };
  }
}
