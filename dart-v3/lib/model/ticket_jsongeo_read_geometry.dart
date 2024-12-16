//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class TicketJsongeoReadGeometry {
  /// Returns a new [TicketJsongeoReadGeometry] instance.
  TicketJsongeoReadGeometry({
    required this.type,
    this.coordinates = const [],
  });

  /// Returns a new [TicketJsongeoReadGeometry] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TicketJsongeoReadGeometry? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return TicketJsongeoReadGeometry(
      type: TicketJsongeoReadGeometryTypeEnum.fromJson(json[r'type'])!,
      coordinates: List<num>.from(json[r'coordinates']),
    );
  }

  TicketJsongeoReadGeometryTypeEnum type;

  List<num> coordinates;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is TicketJsongeoReadGeometry &&
        other.type == type &&
        DeepCollectionEquality.unordered()
            .equals(coordinates, other.coordinates);
  }

  @override
  int get hashCode => type.hashCode + coordinates.hashCode;

  static List<TicketJsongeoReadGeometry> listFromJson(Iterable? json) {
    if (json == null) {
      return <TicketJsongeoReadGeometry>[];
    }

    return json.fold(<TicketJsongeoReadGeometry>[],
        (List<TicketJsongeoReadGeometry> previousValue, element) {
      final TicketJsongeoReadGeometry? object =
          TicketJsongeoReadGeometry.fromJson(element);
      if (object is TicketJsongeoReadGeometry) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, TicketJsongeoReadGeometry> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, TicketJsongeoReadGeometry>{};
    }

    return json.entries.fold(<String, TicketJsongeoReadGeometry>{},
        (Map<String, TicketJsongeoReadGeometry> previousValue, element) {
      final TicketJsongeoReadGeometry? object =
          TicketJsongeoReadGeometry.fromJson(element.value);
      if (object is TicketJsongeoReadGeometry) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of TicketJsongeoReadGeometry-objects as value to a dart map
  static Map<String, List<TicketJsongeoReadGeometry>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<TicketJsongeoReadGeometry>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<TicketJsongeoReadGeometry>>(
          key, TicketJsongeoReadGeometry.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'TicketJsongeoReadGeometry[type=$type, coordinates=$coordinates]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'type': type,
      r'coordinates': coordinates,
    };
  }
}

class TicketJsongeoReadGeometryTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const TicketJsongeoReadGeometryTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const point = TicketJsongeoReadGeometryTypeEnum._(r'Point');

  /// List of all possible values in this [enum][TicketJsongeoReadGeometryTypeEnum].
  static const values = <TicketJsongeoReadGeometryTypeEnum>[
    point,
  ];

  static TicketJsongeoReadGeometryTypeEnum? fromJson(dynamic value) =>
      TicketJsongeoReadGeometryTypeEnumTypeTransformer().decode(value);

  static List<TicketJsongeoReadGeometryTypeEnum> listFromJson(
      List<dynamic> json) {
    return json
        .map((value) {
          return TicketJsongeoReadGeometryTypeEnum.fromJson(value);
        })
        .whereType<TicketJsongeoReadGeometryTypeEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [TicketJsongeoReadGeometryTypeEnum] to String,
/// and [decode] dynamic data back to [TicketJsongeoReadGeometryTypeEnum].
class TicketJsongeoReadGeometryTypeEnumTypeTransformer {
  const TicketJsongeoReadGeometryTypeEnumTypeTransformer._();

  factory TicketJsongeoReadGeometryTypeEnumTypeTransformer() =>
      _instance ??= TicketJsongeoReadGeometryTypeEnumTypeTransformer._();

  String encode(TicketJsongeoReadGeometryTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TicketJsongeoReadGeometryTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TicketJsongeoReadGeometryTypeEnum? decode(dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'Point':
        return TicketJsongeoReadGeometryTypeEnum.point;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [TicketJsongeoReadGeometryTypeEnumTypeTransformer] instance.
  static TicketJsongeoReadGeometryTypeEnumTypeTransformer? _instance;
}
