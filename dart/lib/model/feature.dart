//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class Feature {
  /// Returns a new [Feature] instance.
  Feature({
    this.type = 'Feature',
    this.geometry,
    this.properties = const [],
  });

  /// Returns a new [Feature] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory Feature.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Feature(
      type: json[r'type'],
      geometry: FeatureGeometry.fromJson(json[r'geometry']),
      properties: List<String>.from(json[r'properties'] ?? []),
    );
  }

  String type;

  FeatureGeometry geometry;

  List<String> properties;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Feature &&
        other.type == type &&
        other.geometry == geometry &&
        DeepCollectionEquality.unordered().equals(properties, other.properties);
  }

  @override
  int get hashCode =>
      (type == null ? 0 : type.hashCode) +
      (geometry == null ? 0 : geometry.hashCode) +
      (properties == null ? 0 : properties.hashCode);

  static List<Feature> listFromJson(List<dynamic> json) {
    return <Feature>[
      if (json is List)
        for (dynamic value in json) Feature.fromJson(value),
    ];
  }

  static Map<String, Feature> mapFromJson(Map<String, dynamic> json) {
    return <String, Feature>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Feature.fromJson(entry.value),
    };
  }

  // maps a json object with a list of Feature-objects as value to a dart map
  static Map<String, List<Feature>> mapListFromJson(Map<String, dynamic> json) {
    return <String, List<Feature>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Feature.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'Feature[type=$type, geometry=$geometry, properties=$properties]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (type != null) r'type': type,
      if (geometry != null) r'geometry': geometry,
      if (properties != null) r'properties': properties,
    };
  }
}
