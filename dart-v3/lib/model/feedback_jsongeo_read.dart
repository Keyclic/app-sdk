//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class FeedbackJsongeoRead {
  /// Returns a new [FeedbackJsongeoRead] instance.
  FeedbackJsongeoRead({
    this.description,
    this.geoCoordinates,
    this.markers = const [],
    this.metadata,
    this.reporter,
    required this.visibility,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
  });

  /// Returns a new [FeedbackJsongeoRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackJsongeoRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return FeedbackJsongeoRead(
      description: json[r'description'],
      geoCoordinates:
          GeoCoordinatesJsongeoRead.fromJson(json[r'geoCoordinates']),
      markers: MarkerJsongeoRead.listFromJson(json[r'markers']),
      metadata: json[r'metadata'] == null
          ? null
          : Map<String, Object?>.from(json[r'metadata']),
      reporter: json[r'reporter'],
      visibility:
          FeedbackJsongeoReadVisibilityEnum.fromJson(json[r'visibility']),
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt'])!,
      updatedAt: mapToDateTime(json[r'updatedAt'])!,
    );
  }

  String? description;

  GeoCoordinatesJsongeoRead? geoCoordinates;

  final List<MarkerJsongeoRead> markers;

  Map<String, Object?>? metadata;

  String? reporter;

  FeedbackJsongeoReadVisibilityEnum? visibility;

  /// The resource identifier.
  final String id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackJsongeoRead &&
        other.description == description &&
        other.geoCoordinates == geoCoordinates &&
        DeepCollectionEquality.unordered().equals(markers, other.markers) &&
        DeepCollectionEquality.unordered().equals(metadata, other.metadata) &&
        other.reporter == reporter &&
        other.visibility == visibility &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (description == null ? 0 : description.hashCode) +
      (geoCoordinates == null ? 0 : geoCoordinates.hashCode) +
      markers.hashCode +
      (metadata == null ? 0 : metadata.hashCode) +
      (reporter == null ? 0 : reporter.hashCode) +
      (visibility == null ? 0 : visibility.hashCode) +
      id.hashCode +
      createdAt.hashCode +
      updatedAt.hashCode;

  static List<FeedbackJsongeoRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <FeedbackJsongeoRead>[];
    }

    return json.fold(<FeedbackJsongeoRead>[],
        (List<FeedbackJsongeoRead> previousValue, element) {
      final FeedbackJsongeoRead? object = FeedbackJsongeoRead.fromJson(element);
      if (object is FeedbackJsongeoRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackJsongeoRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackJsongeoRead>{};
    }

    return json.entries.fold(<String, FeedbackJsongeoRead>{},
        (Map<String, FeedbackJsongeoRead> previousValue, element) {
      final FeedbackJsongeoRead? object =
          FeedbackJsongeoRead.fromJson(element.value);
      if (object is FeedbackJsongeoRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackJsongeoRead-objects as value to a dart map
  static Map<String, List<FeedbackJsongeoRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackJsongeoRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackJsongeoRead>>(
          key, FeedbackJsongeoRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'FeedbackJsongeoRead[description=$description, geoCoordinates=$geoCoordinates, markers=$markers, metadata=$metadata, reporter=$reporter, visibility=$visibility, id=$id, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      if (keys == null ||
          keys.any((key) => RegExp(r'^geoCoordinates\.').hasMatch(key)))
        r'geoCoordinates': geoCoordinates?.toJson(keys?.fold<List<String>>(
            <String>[], (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^geoCoordinates\.'))) {
            previousValue.add(element.split(RegExp(r'^geoCoordinates\.')).last);
          }

          return previousValue;
        })),
      r'markers': markers,
      if (keys == null || keys.contains(r'metadata')) r'metadata': metadata,
      if (keys == null || keys.contains(r'reporter')) r'reporter': reporter,
      if (keys == null || keys.contains(r'visibility'))
        r'visibility': visibility,
      r'id': id,
      r'createdAt': createdAt.toUtc().toIso8601String(),
      r'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }
}

class FeedbackJsongeoReadVisibilityEnum {
  /// Instantiate a new enum with the provided [value].
  const FeedbackJsongeoReadVisibilityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PRIVATE =
      FeedbackJsongeoReadVisibilityEnum._(r'VISIBILITY_PRIVATE');
  static const PUBLIC =
      FeedbackJsongeoReadVisibilityEnum._(r'VISIBILITY_PUBLIC');
  static const SHARED =
      FeedbackJsongeoReadVisibilityEnum._(r'VISIBILITY_SHARED');

  /// List of all possible values in this [enum][FeedbackJsongeoReadVisibilityEnum].
  static const values = <FeedbackJsongeoReadVisibilityEnum>[
    PRIVATE,
    PUBLIC,
    SHARED,
  ];

  static FeedbackJsongeoReadVisibilityEnum? fromJson(dynamic value) =>
      FeedbackJsongeoReadVisibilityEnumTypeTransformer().decode(value);

  static List<FeedbackJsongeoReadVisibilityEnum> listFromJson(
      List<dynamic> json) {
    return json
        .map((value) {
          return FeedbackJsongeoReadVisibilityEnum.fromJson(value);
        })
        .whereType<FeedbackJsongeoReadVisibilityEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [FeedbackJsongeoReadVisibilityEnum] to String,
/// and [decode] dynamic data back to [FeedbackJsongeoReadVisibilityEnum].
class FeedbackJsongeoReadVisibilityEnumTypeTransformer {
  const FeedbackJsongeoReadVisibilityEnumTypeTransformer._();

  factory FeedbackJsongeoReadVisibilityEnumTypeTransformer() =>
      _instance ??= FeedbackJsongeoReadVisibilityEnumTypeTransformer._();

  String encode(FeedbackJsongeoReadVisibilityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FeedbackJsongeoReadVisibilityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FeedbackJsongeoReadVisibilityEnum? decode(dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'VISIBILITY_PRIVATE':
        return FeedbackJsongeoReadVisibilityEnum.PRIVATE;
      case r'VISIBILITY_PUBLIC':
        return FeedbackJsongeoReadVisibilityEnum.PUBLIC;
      case r'VISIBILITY_SHARED':
        return FeedbackJsongeoReadVisibilityEnum.SHARED;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [FeedbackJsongeoReadVisibilityEnumTypeTransformer] instance.
  static FeedbackJsongeoReadVisibilityEnumTypeTransformer? _instance;
}
