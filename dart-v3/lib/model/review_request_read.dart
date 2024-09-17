//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ReviewRequestRead {
  /// Returns a new [ReviewRequestRead] instance.
  ReviewRequestRead({
    required this.itemToReview,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.review,
    required this.reviewer,
    this.organization,
  });

  /// Returns a new [ReviewRequestRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewRequestRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReviewRequestRead(
      itemToReview: json[r'itemToReview'],
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
      review: ReviewRead.fromJson(json[r'review']),
      reviewer: json[r'reviewer'],
      organization: json[r'organization'],
    );
  }

  String itemToReview;

  /// The resource identifier.
  final String? id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  ReviewRead? review;

  String reviewer;

  final String? organization;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestRead &&
        other.itemToReview == itemToReview &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.review == review &&
        other.reviewer == reviewer &&
        other.organization == organization;
  }

  @override
  int get hashCode =>
      itemToReview.hashCode +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (review == null ? 0 : review.hashCode) +
      reviewer.hashCode +
      (organization == null ? 0 : organization.hashCode);

  static List<ReviewRequestRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <ReviewRequestRead>[];
    }

    return json.fold(<ReviewRequestRead>[],
        (List<ReviewRequestRead> previousValue, element) {
      final ReviewRequestRead? object = ReviewRequestRead.fromJson(element);
      if (object is ReviewRequestRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewRequestRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewRequestRead>{};
    }

    return json.entries.fold(<String, ReviewRequestRead>{},
        (Map<String, ReviewRequestRead> previousValue, element) {
      final ReviewRequestRead? object =
          ReviewRequestRead.fromJson(element.value);
      if (object is ReviewRequestRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewRequestRead-objects as value to a dart map
  static Map<String, List<ReviewRequestRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewRequestRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewRequestRead>>(
          key, ReviewRequestRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReviewRequestRead[itemToReview=$itemToReview, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, review=$review, reviewer=$reviewer, organization=$organization]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'itemToReview': itemToReview,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
      if (keys == null || keys.any((key) => RegExp(r'^review\.').hasMatch(key)))
        r'review': review?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^review\.'))) {
            previousValue.add(element.split(RegExp(r'^review\.')).last);
          }

          return previousValue;
        })),
      r'reviewer': reviewer,
      if (keys == null || keys.contains(r'organization'))
        r'organization': organization,
    };
  }
}
