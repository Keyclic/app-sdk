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
  static MarkerLinksSelfIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
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
    return json
        .map((value) {
          return MarkerLinksSelfIriTemplateMapping.fromJson(value);
        })
        .whereType<MarkerLinksSelfIriTemplateMapping>()
        .toList();
  }

  static Map<String, MarkerLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MarkerLinksSelfIriTemplateMapping>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, MarkerLinksSelfIriTemplateMapping?>(
            key, MarkerLinksSelfIriTemplateMapping.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, MarkerLinksSelfIriTemplateMapping>;
  }

  // maps a json object with a list of MarkerLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<MarkerLinksSelfIriTemplateMapping>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<MarkerLinksSelfIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              MarkerLinksSelfIriTemplateMapping.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'MarkerLinksSelfIriTemplateMapping[marker=$marker]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (marker != null) r'marker': marker,
    };
  }
}
