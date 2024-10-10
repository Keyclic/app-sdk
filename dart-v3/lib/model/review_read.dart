//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ReviewRead {
  /// Returns a new [ReviewRead] instance.
  ReviewRead({
    this.itemReviewed,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.author,
    this.reviewBody,
    this.reviewRating,
  });

  /// Returns a new [ReviewRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReviewRead(
      itemReviewed: json[r'itemReviewed'],
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
      author: json[r'author'],
      reviewBody: json[r'reviewBody'],
      reviewRating: json[r'reviewRating'],
    );
  }

  String? itemReviewed;

  /// The resource identifier.
  final String? id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  String? author;

  String? reviewBody;

  // minimum: 1
  // maximum: 5
  int? reviewRating;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRead &&
        other.itemReviewed == itemReviewed &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.author == author &&
        other.reviewBody == reviewBody &&
        other.reviewRating == reviewRating;
  }

  @override
  int get hashCode =>
      (itemReviewed == null ? 0 : itemReviewed.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (author == null ? 0 : author.hashCode) +
      (reviewBody == null ? 0 : reviewBody.hashCode) +
      (reviewRating == null ? 0 : reviewRating.hashCode);

  static List<ReviewRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <ReviewRead>[];
    }

    return json.fold(<ReviewRead>[], (List<ReviewRead> previousValue, element) {
      final ReviewRead? object = ReviewRead.fromJson(element);
      if (object is ReviewRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewRead>{};
    }

    return json.entries.fold(<String, ReviewRead>{},
        (Map<String, ReviewRead> previousValue, element) {
      final ReviewRead? object = ReviewRead.fromJson(element.value);
      if (object is ReviewRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewRead-objects as value to a dart map
  static Map<String, List<ReviewRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewRead>>(
          key, ReviewRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReviewRead[itemReviewed=$itemReviewed, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, author=$author, reviewBody=$reviewBody, reviewRating=$reviewRating]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'itemReviewed'))
        r'itemReviewed': itemReviewed,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'author')) r'author': author,
      if (keys == null || keys.contains(r'reviewBody'))
        r'reviewBody': reviewBody,
      if (keys == null || keys.contains(r'reviewRating'))
        r'reviewRating': reviewRating,
    };
  }
}
