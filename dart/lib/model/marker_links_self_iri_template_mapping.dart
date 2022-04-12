//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class MarkerLinksSelfIriTemplateMapping {
  /// Returns a new [MarkerLinksSelfIriTemplateMapping] instance.
  MarkerLinksSelfIriTemplateMapping({
    this.marker,
  });

  /// Returns a new [MarkerLinksSelfIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory MarkerLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MarkerLinksSelfIriTemplateMapping(
      marker: json[r'marker'],
    );
  }

  String marker;

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
      List<dynamic> json) {
    return <MarkerLinksSelfIriTemplateMapping>[
      if (json is List)
        for (dynamic value in json)
          MarkerLinksSelfIriTemplateMapping.fromJson(value),
    ];
  }

  static Map<String, MarkerLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return <String, MarkerLinksSelfIriTemplateMapping>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: MarkerLinksSelfIriTemplateMapping.fromJson(entry.value),
    };
  }

  // maps a json object with a list of MarkerLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<MarkerLinksSelfIriTemplateMapping>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<MarkerLinksSelfIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json.entries)
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
