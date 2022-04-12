//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

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
  factory Review.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json[r'createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json[r'updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return Review(
      links: ReviewLinks.fromJson(json[r'_links']),
      createdAt: createdAt,
      id: json[r'id'],
      reviewBody: json[r'reviewBody'],
      reviewRating: json[r'reviewRating'],
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  ReviewLinks links;

  DateTime createdAt;

  String id;

  String reviewBody;

  // minimum: 1
  // maximum: 5
  int reviewRating;

  String type;

  DateTime updatedAt;

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

  static List<Review> listFromJson(List<dynamic> json) {
    return <Review>[
      if (json is List)
        for (dynamic value in json) Review.fromJson(value),
    ];
  }

  static Map<String, Review> mapFromJson(Map<String, dynamic> json) {
    return <String, Review>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Review.fromJson(entry.value),
    };
  }

  // maps a json object with a list of Review-objects as value to a dart map
  static Map<String, List<Review>> mapListFromJson(Map<String, dynamic> json) {
    return <String, List<Review>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Review.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'Review[links=$links, createdAt=$createdAt, id=$id, reviewBody=$reviewBody, reviewRating=$reviewRating, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (links != null) r'_links': links,
      if (createdAt != null) r'createdAt': createdAt.toUtc().toIso8601String(),
      if (id != null) r'id': id,
      if (reviewBody != null) r'reviewBody': reviewBody,
      if (reviewRating != null) r'reviewRating': reviewRating,
      if (type != null) r'type': type,
      if (updatedAt != null) r'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }
}
