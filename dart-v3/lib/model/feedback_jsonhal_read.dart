//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class FeedbackJsonhalRead {
  /// Returns a new [FeedbackJsonhalRead] instance.
  FeedbackJsonhalRead({
    this.links,
    this.description,
    this.geoCoordinates,
    this.metadata,
    required this.visibility,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.embedded,
  });

  /// Returns a new [FeedbackJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return FeedbackJsonhalRead(
      links: FeedbackJsonhalReadLinks.fromJson(json[r'_links']),
      description: json[r'description'],
      geoCoordinates:
          GeoCoordinatesJsonhalRead.fromJson(json[r'geoCoordinates']),
      metadata: json[r'metadata'] == null
          ? null
          : Map<String, Object?>.from(json[r'metadata']),
      visibility:
          FeedbackJsonhalReadVisibilityEnum.fromJson(json[r'visibility'])!,
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
      embedded: FeedbackJsonhalReadEmbedded.fromJson(json[r'_embedded']),
    );
  }

  FeedbackJsonhalReadLinks? links;

  String? description;

  GeoCoordinatesJsonhalRead? geoCoordinates;

  Map<String, Object?>? metadata;

  FeedbackJsonhalReadVisibilityEnum visibility;

  /// The resource identifier.
  final String? id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  FeedbackJsonhalReadEmbedded? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackJsonhalRead &&
        other.links == links &&
        other.description == description &&
        other.geoCoordinates == geoCoordinates &&
        DeepCollectionEquality.unordered().equals(metadata, other.metadata) &&
        other.visibility == visibility &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.embedded == embedded;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (geoCoordinates == null ? 0 : geoCoordinates.hashCode) +
      (metadata == null ? 0 : metadata.hashCode) +
      visibility.hashCode +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (embedded == null ? 0 : embedded.hashCode);

  static List<FeedbackJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <FeedbackJsonhalRead>[];
    }

    return json.fold(<FeedbackJsonhalRead>[],
        (List<FeedbackJsonhalRead> previousValue, element) {
      final FeedbackJsonhalRead? object = FeedbackJsonhalRead.fromJson(element);
      if (object is FeedbackJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackJsonhalRead>{};
    }

    return json.entries.fold(<String, FeedbackJsonhalRead>{},
        (Map<String, FeedbackJsonhalRead> previousValue, element) {
      final FeedbackJsonhalRead? object =
          FeedbackJsonhalRead.fromJson(element.value);
      if (object is FeedbackJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackJsonhalRead-objects as value to a dart map
  static Map<String, List<FeedbackJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackJsonhalRead>>(
          key, FeedbackJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'FeedbackJsonhalRead[links=$links, description=$description, geoCoordinates=$geoCoordinates, metadata=$metadata, visibility=$visibility, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, embedded=$embedded]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
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
      if (keys == null || keys.contains(r'metadata')) r'metadata': metadata,
      r'visibility': visibility,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
      if (keys == null ||
          keys.any((key) => RegExp(r'^embedded\.').hasMatch(key)))
        r'_embedded': embedded?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^embedded\.'))) {
            previousValue.add(element.split(RegExp(r'^embedded\.')).last);
          }

          return previousValue;
        })),
    };
  }
}

class FeedbackJsonhalReadVisibilityEnum {
  /// Instantiate a new enum with the provided [value].
  const FeedbackJsonhalReadVisibilityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PRIVATE =
      FeedbackJsonhalReadVisibilityEnum._(r'VISIBILITY_PRIVATE');
  static const PUBLIC =
      FeedbackJsonhalReadVisibilityEnum._(r'VISIBILITY_PUBLIC');
  static const SHARED =
      FeedbackJsonhalReadVisibilityEnum._(r'VISIBILITY_SHARED');

  /// List of all possible values in this [enum][FeedbackJsonhalReadVisibilityEnum].
  static const values = <FeedbackJsonhalReadVisibilityEnum>[
    PRIVATE,
    PUBLIC,
    SHARED,
  ];

  static FeedbackJsonhalReadVisibilityEnum? fromJson(dynamic value) =>
      FeedbackJsonhalReadVisibilityEnumTypeTransformer().decode(value);

  static List<FeedbackJsonhalReadVisibilityEnum> listFromJson(
      List<dynamic> json) {
    return json
        .map((value) {
          return FeedbackJsonhalReadVisibilityEnum.fromJson(value);
        })
        .whereType<FeedbackJsonhalReadVisibilityEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [FeedbackJsonhalReadVisibilityEnum] to String,
/// and [decode] dynamic data back to [FeedbackJsonhalReadVisibilityEnum].
class FeedbackJsonhalReadVisibilityEnumTypeTransformer {
  const FeedbackJsonhalReadVisibilityEnumTypeTransformer._();

  factory FeedbackJsonhalReadVisibilityEnumTypeTransformer() =>
      _instance ??= FeedbackJsonhalReadVisibilityEnumTypeTransformer._();

  String encode(FeedbackJsonhalReadVisibilityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FeedbackJsonhalReadVisibilityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FeedbackJsonhalReadVisibilityEnum? decode(dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'VISIBILITY_PRIVATE':
        return FeedbackJsonhalReadVisibilityEnum.PRIVATE;
      case r'VISIBILITY_PUBLIC':
        return FeedbackJsonhalReadVisibilityEnum.PUBLIC;
      case r'VISIBILITY_SHARED':
        return FeedbackJsonhalReadVisibilityEnum.SHARED;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [FeedbackJsonhalReadVisibilityEnumTypeTransformer] instance.
  static FeedbackJsonhalReadVisibilityEnumTypeTransformer? _instance;
}
