//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeatureGeometry {
  /// Returns a new [FeatureGeometry] instance.
  FeatureGeometry({
    this.type,
    this.coordinates,
  });

  /// Returns a new [FeatureGeometry] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeatureGeometry? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return FeatureGeometry(
      type: FeatureGeometryTypeEnum.fromJson(json[r'type']),
      coordinates:
          List.from(json[r'coordinates'] ?? []).map<List<List<num>>>((ring) {
        return List.from(ring).map<List<num>>((point) {
          return List<num>.from(point, growable: false);
        }).toList(growable: false);
      }).toList(growable: false),
    );
  }

  FeatureGeometryTypeEnum? type;

  List<List<List<num>>>? coordinates;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeatureGeometry &&
        other.type == type &&
        DeepCollectionEquality.unordered()
            .equals(coordinates, other.coordinates);
  }

  @override
  int get hashCode =>
      (type == null ? 0 : type.hashCode) +
      (coordinates == null ? 0 : coordinates.hashCode);

  static List<FeatureGeometry> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <FeatureGeometry>[];
    }

    return json.fold(<FeatureGeometry>[],
        (List<FeatureGeometry> previousValue, element) {
      final FeatureGeometry? object = FeatureGeometry.fromJson(element);
      if (object is FeatureGeometry) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeatureGeometry> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeatureGeometry>{};
    }

    return json.entries.fold(<String, FeatureGeometry>{},
        (Map<String, FeatureGeometry> previousValue, element) {
      final FeatureGeometry? object = FeatureGeometry.fromJson(element.value);
      if (object is FeatureGeometry) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeatureGeometry-objects as value to a dart map
  static Map<String, List<FeatureGeometry>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeatureGeometry>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeatureGeometry>>(
          key, FeatureGeometry.listFromJson(value));
    });
  }

  @override
  String toString() => 'FeatureGeometry[type=$type, coordinates=$coordinates]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'type')) r'type': type,
      if (keys == null || keys.contains(r'coordinates'))
        r'coordinates': coordinates,
    };
  }
}

class FeatureGeometryTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const FeatureGeometryTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const polygon = FeatureGeometryTypeEnum._(r'Polygon');
  static const point = FeatureGeometryTypeEnum._(r'Point');

  /// List of all possible values in this [enum][FeatureGeometryTypeEnum].
  static const values = <FeatureGeometryTypeEnum>[
    polygon,
    point,
  ];

  static FeatureGeometryTypeEnum? fromJson(dynamic value) =>
      FeatureGeometryTypeEnumTypeTransformer().decode(value);

  static List<FeatureGeometryTypeEnum> listFromJson(List<dynamic> json) {
    return json
        .map((value) {
          return FeatureGeometryTypeEnum.fromJson(value);
        })
        .whereType<FeatureGeometryTypeEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [FeatureGeometryTypeEnum] to String,
/// and [decode] dynamic data back to [FeatureGeometryTypeEnum].
class FeatureGeometryTypeEnumTypeTransformer {
  const FeatureGeometryTypeEnumTypeTransformer._();

  factory FeatureGeometryTypeEnumTypeTransformer() =>
      _instance ??= FeatureGeometryTypeEnumTypeTransformer._();

  String encode(FeatureGeometryTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FeatureGeometryTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FeatureGeometryTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    switch (data) {
      case r'Polygon':
        return FeatureGeometryTypeEnum.polygon;
      case r'Point':
        return FeatureGeometryTypeEnum.point;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [FeatureGeometryTypeEnumTypeTransformer] instance.
  static FeatureGeometryTypeEnumTypeTransformer? _instance;
}
