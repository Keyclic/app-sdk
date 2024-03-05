//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Feedback {
  /// Returns a new [Feedback] instance.
  Feedback({
    this.embedded,
    this.links,
    this.address,
    this.createdAt,
    this.description,
    this.geoCoordinates,
    this.id,
    this.metadata,
    this.priority,
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
      embedded: FeedbackEmbedded.fromJson(json[r'_embedded']),
      links: FeedbackLinks.fromJson(json[r'_links']),
      address: FeedbackPostalAddress.fromJson(json[r'address']),
      createdAt: createdAt,
      description: json[r'description'],
      geoCoordinates: FeedbackGeoCoordinates.fromJson(json[r'geoCoordinates']),
      id: json[r'id'],
      metadata: json[r'metadata'] == null
          ? null
          : Map<String, Object?>.from(json[r'metadata']),
      priority: FeedbackPriority.fromJson(json[r'priority']),
      type: json[r'type'],
      updatedAt: updatedAt,
      visibility: FeedbackVisibilityEnum.fromJson(json[r'visibility']),
    );
  }

  FeedbackEmbedded? embedded;

  FeedbackLinks? links;

  FeedbackPostalAddress? address;

  final DateTime? createdAt;

  String? description;

  FeedbackGeoCoordinates? geoCoordinates;

  final String? id;

  Map<String, Object?>? metadata;

  FeedbackPriority? priority;

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
        other.address == address &&
        other.createdAt == createdAt &&
        other.description == description &&
        other.geoCoordinates == geoCoordinates &&
        other.id == id &&
        DeepCollectionEquality.unordered().equals(metadata, other.metadata) &&
        other.priority == priority &&
        other.type == type &&
        other.updatedAt == updatedAt &&
        other.visibility == visibility;
  }

  @override
  int get hashCode =>
      (embedded == null ? 0 : embedded.hashCode) +
      (links == null ? 0 : links.hashCode) +
      (address == null ? 0 : address.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (geoCoordinates == null ? 0 : geoCoordinates.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (metadata == null ? 0 : metadata.hashCode) +
      (priority == null ? 0 : priority.hashCode) +
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
      'Feedback[embedded=$embedded, links=$links, address=$address, createdAt=$createdAt, description=$description, geoCoordinates=$geoCoordinates, id=$id, metadata=$metadata, priority=$priority, type=$type, updatedAt=$updatedAt, visibility=$visibility]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^embedded\.').hasMatch(key)))
        r'_embedded': embedded?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^embedded\.'))) {
            previousValue.add(element.split(RegExp(r'^embedded\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^address\.').hasMatch(key)))
        r'address': address?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^address\.'))) {
            previousValue.add(element.split(RegExp(r'^address\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
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
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'metadata')) r'metadata': metadata,
      if (keys == null ||
          keys.any((key) => RegExp(r'^priority\.').hasMatch(key)))
        r'priority': priority?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^priority\.'))) {
            previousValue.add(element.split(RegExp(r'^priority\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'type')) r'type': type,
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'visibility'))
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
  static const SHARED = FeedbackVisibilityEnum._(r'VISIBILITY_SHARED');

  /// List of all possible values in this [enum][FeedbackVisibilityEnum].
  static const values = <FeedbackVisibilityEnum>[
    PRIVATE,
    PUBLIC,
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
