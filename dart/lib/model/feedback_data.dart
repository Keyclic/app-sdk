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
    this.priority,
    this.reporter,
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
          : Map<String, Object>.from(json[r'metadata']),
      place: json[r'place'],
      priority: json[r'priority'],
      reporter: json[r'reporter'],
      visibility: FeedbackDataVisibilityEnum.fromJson(json[r'visibility'])!,
    );
  }

  String? batch;

  String? businessActivity;

  String? category;

  String? description;

  FeedbackDataGeo geo;

  Map<String, Object>? metadata;

  String place;

  String? priority;

  String? reporter;

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
        other.priority == priority &&
        other.reporter == reporter &&
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
      (priority == null ? 0 : priority.hashCode) +
      (reporter == null ? 0 : reporter.hashCode) +
      visibility.hashCode;

  static List<FeedbackData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <FeedbackData>[];
    }

    return json.fold(<FeedbackData>[],
        (List<FeedbackData> previousValue, element) {
      final FeedbackData? object = FeedbackData.fromJson(element);
      if (object is FeedbackData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackData>{};
    }

    return json.entries.fold(<String, FeedbackData>{},
        (Map<String, FeedbackData> previousValue, element) {
      final FeedbackData? object = FeedbackData.fromJson(element.value);
      if (object is FeedbackData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackData-objects as value to a dart map
  static Map<String, List<FeedbackData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackData>>(
          key, FeedbackData.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'FeedbackData[batch=$batch, businessActivity=$businessActivity, category=$category, description=$description, geo=$geo, metadata=$metadata, place=$place, priority=$priority, reporter=$reporter, visibility=$visibility]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && batch != null) ||
          (keys?.contains(r'batch') ?? false))
        r'batch': batch,
      if ((keys == null && businessActivity != null) ||
          (keys?.contains(r'businessActivity') ?? false))
        r'businessActivity': businessActivity,
      if ((keys == null && category != null) ||
          (keys?.contains(r'category') ?? false))
        r'category': category,
      if ((keys == null && description != null) ||
          (keys?.contains(r'description') ?? false))
        r'description': description,
      r'geo': geo.toJson(),
      if ((keys == null && metadata != null) ||
          (keys?.contains(r'metadata') ?? false))
        r'metadata': metadata,
      r'place': place,
      if ((keys == null && priority != null) ||
          (keys?.contains(r'priority') ?? false))
        r'priority': priority,
      if ((keys == null && reporter != null) ||
          (keys?.contains(r'reporter') ?? false))
        r'reporter': reporter,
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
