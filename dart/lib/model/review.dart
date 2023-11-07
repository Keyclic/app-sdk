//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Review {
  /// Returns a new [Review] instance.
  Review({
    this.links,
    this.createdAt,
    this.id,
    this.reviewBody,
    this.reviewRating,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [Review] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Review? fromJson(Map<String, dynamic>? json) {
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

    return Review(
      links: json[r'_links'] is! Map
          ? null
          : ReviewLinks.fromJson(json[r'_links']),
      createdAt: createdAt,
      id: json[r'id'],
      reviewBody: json[r'reviewBody'],
      reviewRating: json[r'reviewRating'],
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  ReviewLinks? links;

  final DateTime? createdAt;

  final String? id;

  String? reviewBody;

  // minimum: 1
  // maximum: 5
  int? reviewRating;

  String? type;

  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Review &&
        other.links == links &&
        other.createdAt == createdAt &&
        other.id == id &&
        other.reviewBody == reviewBody &&
        other.reviewRating == reviewRating &&
        other.type == type &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (reviewBody == null ? 0 : reviewBody.hashCode) +
      (reviewRating == null ? 0 : reviewRating.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<Review> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Review>[];
    }

    return json.fold(<Review>[], (List<Review> previousValue, element) {
      final Review? object = Review.fromJson(element);
      if (object is Review) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Review> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Review>{};
    }

    return json.entries.fold(<String, Review>{},
        (Map<String, Review> previousValue, element) {
      final Review? object = Review.fromJson(element.value);
      if (object is Review) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Review-objects as value to a dart map
  static Map<String, List<Review>> mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Review>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Review>>(key, Review.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Review[links=$links, createdAt=$createdAt, id=$id, reviewBody=$reviewBody, reviewRating=$reviewRating, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && links != null) ||
          (keys?.contains(r'links') ?? false))
        r'_links': links?.toJson(),
      if ((keys == null && createdAt != null) ||
          (keys?.contains(r'createdAt') ?? false))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if ((keys == null && id != null) || (keys?.contains(r'id') ?? false))
        r'id': id,
      if ((keys == null && reviewBody != null) ||
          (keys?.contains(r'reviewBody') ?? false))
        r'reviewBody': reviewBody,
      if ((keys == null && reviewRating != null) ||
          (keys?.contains(r'reviewRating') ?? false))
        r'reviewRating': reviewRating,
      if ((keys == null && type != null) || (keys?.contains(r'type') ?? false))
        r'type': type,
      if ((keys == null && updatedAt != null) ||
          (keys?.contains(r'updatedAt') ?? false))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}
