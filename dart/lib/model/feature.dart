//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Feature {
  /// Returns a new [Feature] instance.
  Feature({
    this.type = 'Feature',
    required this.geometry,
    this.properties,
  });

  /// Returns a new [Feature] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Feature? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return Feature(
      type: json[r'type'],
      geometry: Map<String, Object?>.from(json[r'geometry']),
      properties: json[r'properties'] == null
          ? null
          : List<String>.from(json[r'properties']),
    );
  }

  String type;

  Map<String, Object?> geometry;

  List<String>? properties;

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
      type.hashCode +
      geometry.hashCode +
      (properties == null ? 0 : properties.hashCode);

  static List<Feature> listFromJson(Iterable? json) {
    if (json == null) {
      return <Feature>[];
    }

    return json.fold(<Feature>[], (List<Feature> previousValue, element) {
      final Feature? object = Feature.fromJson(element);
      if (object is Feature) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Feature> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Feature>{};
    }

    return json.entries.fold(<String, Feature>{},
        (Map<String, Feature> previousValue, element) {
      final Feature? object = Feature.fromJson(element.value);
      if (object is Feature) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Feature-objects as value to a dart map
  static Map<String, List<Feature>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Feature>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Feature>>(key, Feature.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Feature[type=$type, geometry=$geometry, properties=$properties]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'type': type,
      r'geometry': geometry,
      if (keys == null || keys.contains(r'properties'))
        r'properties': properties,
    };
  }
}
