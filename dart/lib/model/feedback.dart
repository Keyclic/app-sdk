//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Feedback {
  /// Returns a new [Feedback] instance.
  Feedback({
    this.embedded,
    this.links,
    this.createdAt,
    this.description,
    this.geoCoordinates,
    this.id,
    this.metadata,
    this.public,
    this.type,
    this.updatedAt,
    this.visibility,
  });

  /// Returns a new [Feedback] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Feedback? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? createdAt =
        json[r'createdAt'] == null ? null : DateTime.parse(json[r'createdAt']);
    if (createdAt != null && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime? updatedAt =
        json[r'updatedAt'] == null ? null : DateTime.parse(json[r'updatedAt']);
    if (updatedAt != null && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return Feedback(
      embedded: json[r'_embedded'] is! Map
          ? null
          : FeedbackEmbedded.fromJson(json[r'_embedded']),
      links: json[r'_links'] is! Map
          ? null
          : FeedbackLinks.fromJson(json[r'_links']),
      createdAt: createdAt,
      description: json[r'description'],
      geoCoordinates: json[r'geoCoordinates'] is! Map
          ? null
          : FeedbackGeoCoordinates.fromJson(json[r'geoCoordinates']),
      id: json[r'id'],
      metadata: json[r'metadata'] is! Map
          ? null
          : Map<String, Object>.from(json[r'metadata']),
      public: json[r'public'],
      type: json[r'type'],
      updatedAt: updatedAt,
      visibility: FeedbackVisibilityEnum.fromJson(json[r'visibility']),
    );
  }

  FeedbackEmbedded? embedded;

  FeedbackLinks? links;

  final DateTime? createdAt;

  String? description;

  FeedbackGeoCoordinates? geoCoordinates;

  final String? id;

  Map<String, Object>? metadata;

  bool? public;

  String? type;

  final DateTime? updatedAt;

  FeedbackVisibilityEnum? visibility;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Feedback &&
        other.embedded == embedded &&
        other.links == links &&
        other.createdAt == createdAt &&
        other.description == description &&
        other.geoCoordinates == geoCoordinates &&
        other.id == id &&
        DeepCollectionEquality.unordered().equals(metadata, other.metadata) &&
        other.public == public &&
        other.type == type &&
        other.updatedAt == updatedAt &&
        other.visibility == visibility;
  }

  @override
  int get hashCode =>
      (embedded == null ? 0 : embedded.hashCode) +
      (links == null ? 0 : links.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (geoCoordinates == null ? 0 : geoCoordinates.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (metadata == null ? 0 : metadata.hashCode) +
      (public == null ? 0 : public.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (visibility == null ? 0 : visibility.hashCode);

  static List<Feedback> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <Feedback>[];
    }

    return json.fold(<Feedback>[], (List<Feedback> previousValue, element) {
      final Feedback? object = Feedback.fromJson(element);
      if (object is Feedback) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Feedback> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Feedback>{};
    }

    return json.entries.fold(<String, Feedback>{},
        (Map<String, Feedback> previousValue, element) {
      final Feedback? object = Feedback.fromJson(element.value);
      if (object is Feedback) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Feedback-objects as value to a dart map
  static Map<String, List<Feedback>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Feedback>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Feedback>>(
          key, Feedback.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Feedback[embedded=$embedded, links=$links, createdAt=$createdAt, description=$description, geoCoordinates=$geoCoordinates, id=$id, metadata=$metadata, public=$public, type=$type, updatedAt=$updatedAt, visibility=$visibility]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && embedded != null) ||
          (keys?.contains(r'embedded') ?? false))
        r'_embedded': embedded?.toJson(),
      if ((keys == null && links != null) ||
          (keys?.contains(r'links') ?? false))
        r'_links': links?.toJson(),
      if ((keys == null && createdAt != null) ||
          (keys?.contains(r'createdAt') ?? false))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if ((keys == null && description != null) ||
          (keys?.contains(r'description') ?? false))
        r'description': description,
      if ((keys == null && geoCoordinates != null) ||
          (keys?.contains(r'geoCoordinates') ?? false))
        r'geoCoordinates': geoCoordinates?.toJson(),
      if ((keys == null && id != null) || (keys?.contains(r'id') ?? false))
        r'id': id,
      if ((keys == null && metadata != null) ||
          (keys?.contains(r'metadata') ?? false))
        r'metadata': metadata,
      if ((keys == null && public != null) ||
          (keys?.contains(r'public') ?? false))
        r'public': public,
      if ((keys == null && type != null) || (keys?.contains(r'type') ?? false))
        r'type': type,
      if ((keys == null && updatedAt != null) ||
          (keys?.contains(r'updatedAt') ?? false))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
      if ((keys == null && visibility != null) ||
          (keys?.contains(r'visibility') ?? false))
        r'visibility': visibility,
    };
  }
}

class FeedbackVisibilityEnum {
  /// Instantiate a new enum with the provided [value].
  const FeedbackVisibilityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PRIVATE = FeedbackVisibilityEnum._(r'VISIBILITY_PRIVATE');
  static const PUBLIC = FeedbackVisibilityEnum._(r'VISIBILITY_PUBLIC');
  static const RESTRICTED = FeedbackVisibilityEnum._(r'VISIBILITY_RESTRICTED');
  static const SHARED = FeedbackVisibilityEnum._(r'VISIBILITY_SHARED');

  /// List of all possible values in this [enum][FeedbackVisibilityEnum].
  static const values = <FeedbackVisibilityEnum>[
    PRIVATE,
    PUBLIC,
    RESTRICTED,
    SHARED,
  ];

  static FeedbackVisibilityEnum? fromJson(dynamic value) =>
      FeedbackVisibilityEnumTypeTransformer().decode(value);

  static List<FeedbackVisibilityEnum> listFromJson(List<dynamic> json) {
    return json
        .map((value) {
          return FeedbackVisibilityEnum.fromJson(value);
        })
        .whereType<FeedbackVisibilityEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [FeedbackVisibilityEnum] to String,
/// and [decode] dynamic data back to [FeedbackVisibilityEnum].
class FeedbackVisibilityEnumTypeTransformer {
  const FeedbackVisibilityEnumTypeTransformer._();

  factory FeedbackVisibilityEnumTypeTransformer() =>
      _instance ??= FeedbackVisibilityEnumTypeTransformer._();

  String encode(FeedbackVisibilityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FeedbackVisibilityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FeedbackVisibilityEnum? decode(dynamic data, {bool allowNull = true}) {
    switch (data) {
      case r'VISIBILITY_PRIVATE':
        return FeedbackVisibilityEnum.PRIVATE;
      case r'VISIBILITY_PUBLIC':
        return FeedbackVisibilityEnum.PUBLIC;
      case r'VISIBILITY_RESTRICTED':
        return FeedbackVisibilityEnum.RESTRICTED;
      case r'VISIBILITY_SHARED':
        return FeedbackVisibilityEnum.SHARED;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [FeedbackVisibilityEnumTypeTransformer] instance.
  static FeedbackVisibilityEnumTypeTransformer? _instance;
}
