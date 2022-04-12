//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackData {
  /// Returns a new [FeedbackData] instance.
  FeedbackData({
    this.batch,
    this.businessActivity,
    this.category,
    this.description,
    required this.geo,
    this.metadata,
    required this.place,
    required this.visibility,
  });

  /// Returns a new [FeedbackData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FeedbackData(
      batch: json[r'batch'],
      businessActivity: json[r'businessActivity'],
      category: json[r'category'],
      description: json[r'description'],
      geo: FeedbackDataGeo.fromJson(json[r'geo'])!,
      metadata: json[r'metadata'] == null
          ? null
          : Map<String, dynamic>.from(json[r'metadata']),
      place: json[r'place'],
      visibility: FeedbackDataVisibilityEnum.fromJson(json[r'visibility'])!,
    );
  }

  String? batch;

  String? businessActivity;

  String? category;

  String? description;

  FeedbackDataGeo geo;

  Map<String, dynamic>? metadata;

  String place;

  FeedbackDataVisibilityEnum visibility;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackData &&
        other.batch == batch &&
        other.businessActivity == businessActivity &&
        other.category == category &&
        other.description == description &&
        other.geo == geo &&
        other.metadata == metadata &&
        other.place == place &&
        other.visibility == visibility;
  }

  @override
  int get hashCode =>
      (batch == null ? 0 : batch.hashCode) +
      (businessActivity == null ? 0 : businessActivity.hashCode) +
      (category == null ? 0 : category.hashCode) +
      (description == null ? 0 : description.hashCode) +
      geo.hashCode +
      (metadata == null ? 0 : metadata.hashCode) +
      place.hashCode +
      visibility.hashCode;

  static List<FeedbackData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <FeedbackData>[];
    }
    return json
        .map((value) {
          return FeedbackData.fromJson(value);
        })
        .whereType<FeedbackData>()
        .toList();
  }

  static Map<String, FeedbackData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackData>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, FeedbackData?>(key, FeedbackData.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, FeedbackData>;
  }

  // maps a json object with a list of FeedbackData-objects as value to a dart map
  static Map<String, List<FeedbackData>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<FeedbackData>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: FeedbackData.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'FeedbackData[batch=$batch, businessActivity=$businessActivity, category=$category, description=$description, geo=$geo, metadata=$metadata, place=$place, visibility=$visibility]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (batch != null) r'batch': batch,
      if (businessActivity != null) r'businessActivity': businessActivity,
      if (category != null) r'category': category,
      if (description != null) r'description': description,
      r'geo': geo,
      if (metadata != null) r'metadata': metadata,
      r'place': place,
      r'visibility': visibility,
    };
  }
}

class FeedbackDataVisibilityEnum {
  /// Instantiate a new enum with the provided [value].
  const FeedbackDataVisibilityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PRIVATE = FeedbackDataVisibilityEnum._(r'VISIBILITY_PRIVATE');
  static const PUBLIC = FeedbackDataVisibilityEnum._(r'VISIBILITY_PUBLIC');
  static const RESTRICTED =
      FeedbackDataVisibilityEnum._(r'VISIBILITY_RESTRICTED');
  static const SHARED = FeedbackDataVisibilityEnum._(r'VISIBILITY_SHARED');

  /// List of all possible values in this [enum][FeedbackDataVisibilityEnum].
  static const values = <FeedbackDataVisibilityEnum>[
    PRIVATE,
    PUBLIC,
    RESTRICTED,
    SHARED,
  ];

  static FeedbackDataVisibilityEnum? fromJson(dynamic value) =>
      FeedbackDataVisibilityEnumTypeTransformer().decode(value);

  static List<FeedbackDataVisibilityEnum> listFromJson(List<dynamic> json) {
    return json
        .map((value) {
          return FeedbackDataVisibilityEnum.fromJson(value);
        })
        .whereType<FeedbackDataVisibilityEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [FeedbackDataVisibilityEnum] to String,
/// and [decode] dynamic data back to [FeedbackDataVisibilityEnum].
class FeedbackDataVisibilityEnumTypeTransformer {
  const FeedbackDataVisibilityEnumTypeTransformer._();

  factory FeedbackDataVisibilityEnumTypeTransformer() =>
      _instance ??= FeedbackDataVisibilityEnumTypeTransformer._();

  String encode(FeedbackDataVisibilityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FeedbackDataVisibilityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FeedbackDataVisibilityEnum? decode(dynamic data, {bool allowNull = true}) {
    switch (data) {
      case r'VISIBILITY_PRIVATE':
        return FeedbackDataVisibilityEnum.PRIVATE;
      case r'VISIBILITY_PUBLIC':
        return FeedbackDataVisibilityEnum.PUBLIC;
      case r'VISIBILITY_RESTRICTED':
        return FeedbackDataVisibilityEnum.RESTRICTED;
      case r'VISIBILITY_SHARED':
        return FeedbackDataVisibilityEnum.SHARED;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [FeedbackDataVisibilityEnumTypeTransformer] instance.
  static FeedbackDataVisibilityEnumTypeTransformer? _instance;
}
