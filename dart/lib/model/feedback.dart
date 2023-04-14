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
    this.state = const [],
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

    DateTime? createdAt = json[r'createdAt'] is String
        ? DateTime.parse(json[r'createdAt'])
        : null;
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime? updatedAt = json[r'updatedAt'] is String
        ? DateTime.parse(json[r'updatedAt'])
        : null;
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return Feedback(
      embedded: FeedbackEmbedded.fromJson(json[r'_embedded']),
      links: FeedbackLinks.fromJson(json[r'_links']),
      createdAt: createdAt,
      description: json[r'description'],
      geoCoordinates: FeedbackGeoCoordinates.fromJson(json[r'geoCoordinates']),
      id: json[r'id'],
      metadata: json[r'metadata'] == null
          ? null
          : Map<String, dynamic>.from(json[r'metadata']),
      public: json[r'public'],
      state: List<String>.from(json[r'state'] ?? []),
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

  Map<String, dynamic>? metadata;

  bool? public;

  List<String> state;

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
        other.metadata == metadata &&
        other.public == public &&
        DeepCollectionEquality.unordered().equals(state, other.state) &&
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
      state.hashCode +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (visibility == null ? 0 : visibility.hashCode);

  static List<Feedback> listFromJson(List<dynamic>? json) {
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
      'Feedback[embedded=$embedded, links=$links, createdAt=$createdAt, description=$description, geoCoordinates=$geoCoordinates, id=$id, metadata=$metadata, public=$public, state=$state, type=$type, updatedAt=$updatedAt, visibility=$visibility]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
      if (links != null) r'_links': links,
      if (createdAt != null) r'createdAt': createdAt!.toUtc().toIso8601String(),
      if (description != null) r'description': description,
      if (geoCoordinates != null) r'geoCoordinates': geoCoordinates,
      if (id != null) r'id': id,
      if (metadata != null) r'metadata': metadata,
      if (public != null) r'public': public,
      r'state': state,
      if (type != null) r'type': type,
      if (updatedAt != null) r'updatedAt': updatedAt!.toUtc().toIso8601String(),
      if (visibility != null) r'visibility': visibility,
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
