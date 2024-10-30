//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class FeedbackRead {
  /// Returns a new [FeedbackRead] instance.
  FeedbackRead({
    this.description,
    this.geoCoordinates,
    this.markers,
    this.member,
    this.metadata,
    required this.visibility,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.reporter,
  });

  /// Returns a new [FeedbackRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return FeedbackRead(
      description: json[r'description'],
      geoCoordinates: GeoCoordinatesRead.fromJson(json[r'geoCoordinates']),
      markers: MarkerRead.listFromJson(json[r'markers']),
      member: json[r'member'],
      metadata: json[r'metadata'] == null
          ? null
          : Map<String, Object?>.from(json[r'metadata']),
      visibility: FeedbackReadVisibilityEnum.fromJson(json[r'visibility'])!,
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
      reporter: json[r'reporter'],
    );
  }

  String? description;

  GeoCoordinatesRead? geoCoordinates;

  final List<MarkerRead>? markers;

  String? member;

  Map<String, Object?>? metadata;

  FeedbackReadVisibilityEnum visibility;

  /// The resource identifier.
  final String? id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  final String? reporter;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackRead &&
        other.description == description &&
        other.geoCoordinates == geoCoordinates &&
        DeepCollectionEquality.unordered().equals(markers, other.markers) &&
        other.member == member &&
        DeepCollectionEquality.unordered().equals(metadata, other.metadata) &&
        other.visibility == visibility &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.reporter == reporter;
  }

  @override
  int get hashCode =>
      (description == null ? 0 : description.hashCode) +
      (geoCoordinates == null ? 0 : geoCoordinates.hashCode) +
      (markers == null ? 0 : markers.hashCode) +
      (member == null ? 0 : member.hashCode) +
      (metadata == null ? 0 : metadata.hashCode) +
      visibility.hashCode +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (reporter == null ? 0 : reporter.hashCode);

  static List<FeedbackRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <FeedbackRead>[];
    }

    return json.fold(<FeedbackRead>[],
        (List<FeedbackRead> previousValue, element) {
      final FeedbackRead? object = FeedbackRead.fromJson(element);
      if (object is FeedbackRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackRead>{};
    }

    return json.entries.fold(<String, FeedbackRead>{},
        (Map<String, FeedbackRead> previousValue, element) {
      final FeedbackRead? object = FeedbackRead.fromJson(element.value);
      if (object is FeedbackRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackRead-objects as value to a dart map
  static Map<String, List<FeedbackRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackRead>>(
          key, FeedbackRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'FeedbackRead[description=$description, geoCoordinates=$geoCoordinates, markers=$markers, member=$member, metadata=$metadata, visibility=$visibility, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, reporter=$reporter]';

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
      if (keys == null || keys.contains(r'markers')) r'markers': markers,
      if (keys == null || keys.contains(r'member')) r'member': member,
      if (keys == null || keys.contains(r'metadata')) r'metadata': metadata,
      r'visibility': visibility,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'reporter')) r'reporter': reporter,
    };
  }
}

class FeedbackReadVisibilityEnum {
  /// Instantiate a new enum with the provided [value].
  const FeedbackReadVisibilityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PRIVATE = FeedbackReadVisibilityEnum._(r'VISIBILITY_PRIVATE');
  static const PUBLIC = FeedbackReadVisibilityEnum._(r'VISIBILITY_PUBLIC');
  static const SHARED = FeedbackReadVisibilityEnum._(r'VISIBILITY_SHARED');

  /// List of all possible values in this [enum][FeedbackReadVisibilityEnum].
  static const values = <FeedbackReadVisibilityEnum>[
    PRIVATE,
    PUBLIC,
    SHARED,
  ];

  static FeedbackReadVisibilityEnum? fromJson(dynamic value) =>
      FeedbackReadVisibilityEnumTypeTransformer().decode(value);

  static List<FeedbackReadVisibilityEnum> listFromJson(List<dynamic> json) {
    return json
        .map((value) {
          return FeedbackReadVisibilityEnum.fromJson(value);
        })
        .whereType<FeedbackReadVisibilityEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [FeedbackReadVisibilityEnum] to String,
/// and [decode] dynamic data back to [FeedbackReadVisibilityEnum].
class FeedbackReadVisibilityEnumTypeTransformer {
  const FeedbackReadVisibilityEnumTypeTransformer._();

  factory FeedbackReadVisibilityEnumTypeTransformer() =>
      _instance ??= FeedbackReadVisibilityEnumTypeTransformer._();

  String encode(FeedbackReadVisibilityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FeedbackReadVisibilityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FeedbackReadVisibilityEnum? decode(dynamic data, {bool allowNull = true}) {
    switch (data) {
      case r'VISIBILITY_PRIVATE':
        return FeedbackReadVisibilityEnum.PRIVATE;
      case r'VISIBILITY_PUBLIC':
        return FeedbackReadVisibilityEnum.PUBLIC;
      case r'VISIBILITY_SHARED':
        return FeedbackReadVisibilityEnum.SHARED;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [FeedbackReadVisibilityEnumTypeTransformer] instance.
  static FeedbackReadVisibilityEnumTypeTransformer? _instance;
}
