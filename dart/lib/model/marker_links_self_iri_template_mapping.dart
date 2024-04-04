//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MarkerLinksSelfIriTemplateMapping {
  /// Returns a new [MarkerLinksSelfIriTemplateMapping] instance.
  MarkerLinksSelfIriTemplateMapping({
    this.marker,
  });

  /// Returns a new [MarkerLinksSelfIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MarkerLinksSelfIriTemplateMapping? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return MarkerLinksSelfIriTemplateMapping(
      marker: json[r'marker'],
    );
  }

  String? marker;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MarkerLinksSelfIriTemplateMapping && other.marker == marker;
  }

  @override
  int get hashCode => (marker == null ? 0 : marker.hashCode);

  static List<MarkerLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <MarkerLinksSelfIriTemplateMapping>[];
    }

    return json.fold(<MarkerLinksSelfIriTemplateMapping>[],
        (List<MarkerLinksSelfIriTemplateMapping> previousValue, element) {
      final MarkerLinksSelfIriTemplateMapping? object =
          MarkerLinksSelfIriTemplateMapping.fromJson(element);
      if (object is MarkerLinksSelfIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, MarkerLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MarkerLinksSelfIriTemplateMapping>{};
    }

    return json.entries.fold(<String, MarkerLinksSelfIriTemplateMapping>{},
        (Map<String, MarkerLinksSelfIriTemplateMapping> previousValue,
            element) {
      final MarkerLinksSelfIriTemplateMapping? object =
          MarkerLinksSelfIriTemplateMapping.fromJson(element.value);
      if (object is MarkerLinksSelfIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of MarkerLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<MarkerLinksSelfIriTemplateMapping>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<MarkerLinksSelfIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<MarkerLinksSelfIriTemplateMapping>>(
          key, MarkerLinksSelfIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() => 'MarkerLinksSelfIriTemplateMapping[marker=$marker]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'marker')) r'marker': marker,
    };
  }
}
