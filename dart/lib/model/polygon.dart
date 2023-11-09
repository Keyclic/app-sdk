//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Polygon {
  /// Returns a new [Polygon] instance.
  Polygon({
    this.type,
    this.features,
  });

  /// Returns a new [Polygon] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Polygon? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Polygon(
      type: json[r'type'],
      features: json[r'features'] is! Iterable
          ? null
          : Feature.listFromJson(json[r'features']),
    );
  }

  String? type;

  List<Feature>? features;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Polygon &&
        other.type == type &&
        DeepCollectionEquality.unordered().equals(features, other.features);
  }

  @override
  int get hashCode =>
      (type == null ? 0 : type.hashCode) +
      (features == null ? 0 : features.hashCode);

  static List<Polygon> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <Polygon>[];
    }

    return json.fold(<Polygon>[], (List<Polygon> previousValue, element) {
      final Polygon? object = Polygon.fromJson(element);
      if (object is Polygon) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Polygon> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Polygon>{};
    }

    return json.entries.fold(<String, Polygon>{},
        (Map<String, Polygon> previousValue, element) {
      final Polygon? object = Polygon.fromJson(element.value);
      if (object is Polygon) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Polygon-objects as value to a dart map
  static Map<String, List<Polygon>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Polygon>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Polygon>>(key, Polygon.listFromJson(value));
    });
  }

  @override
  String toString() => 'Polygon[type=$type, features=$features]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && type != null) || (keys?.contains(r'type') ?? false))
        r'type': type,
      if ((keys == null && features != null) ||
          (keys?.contains(r'features') ?? false))
        r'features': features,
    };
  }
}
