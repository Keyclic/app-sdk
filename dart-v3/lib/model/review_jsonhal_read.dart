//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ReviewJsonhalRead {
  /// Returns a new [ReviewJsonhalRead] instance.
  ReviewJsonhalRead({
    this.links,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.reviewBody,
    this.reviewRating,
  });

  /// Returns a new [ReviewJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReviewJsonhalRead(
      links: ReviewJsonhalReadLinks.fromJson(json[r'_links']),
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
      reviewBody: json[r'reviewBody'],
      reviewRating: json[r'reviewRating'],
    );
  }

  ReviewJsonhalReadLinks? links;

  /// The resource identifier.
  final String? id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

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

    return other is ReviewJsonhalRead &&
        other.links == links &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.reviewBody == reviewBody &&
        other.reviewRating == reviewRating;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (reviewBody == null ? 0 : reviewBody.hashCode) +
      (reviewRating == null ? 0 : reviewRating.hashCode);

  static List<ReviewJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <ReviewJsonhalRead>[];
    }

    return json.fold(<ReviewJsonhalRead>[],
        (List<ReviewJsonhalRead> previousValue, element) {
      final ReviewJsonhalRead? object = ReviewJsonhalRead.fromJson(element);
      if (object is ReviewJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewJsonhalRead>{};
    }

    return json.entries.fold(<String, ReviewJsonhalRead>{},
        (Map<String, ReviewJsonhalRead> previousValue, element) {
      final ReviewJsonhalRead? object =
          ReviewJsonhalRead.fromJson(element.value);
      if (object is ReviewJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewJsonhalRead-objects as value to a dart map
  static Map<String, List<ReviewJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewJsonhalRead>>(
          key, ReviewJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReviewJsonhalRead[links=$links, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, reviewBody=$reviewBody, reviewRating=$reviewRating]';

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
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'reviewBody'))
        r'reviewBody': reviewBody,
      if (keys == null || keys.contains(r'reviewRating'))
        r'reviewRating': reviewRating,
    };
  }
}
