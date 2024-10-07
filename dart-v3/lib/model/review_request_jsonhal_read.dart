//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ReviewRequestJsonhalRead {
  /// Returns a new [ReviewRequestJsonhalRead] instance.
  ReviewRequestJsonhalRead({
    required this.links,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    this.embedded,
  });

  /// Returns a new [ReviewRequestJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewRequestJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReviewRequestJsonhalRead(
      links: ReviewRequestJsonhalReadLinks.fromJson(json[r'_links'])!,
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt'])!,
      updatedAt: mapToDateTime(json[r'updatedAt'])!,
      embedded: ReviewRequestJsonhalReadEmbedded.fromJson(json[r'_embedded']),
    );
  }

  ReviewRequestJsonhalReadLinks links;

  /// The resource identifier.
  final String id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime updatedAt;

  ReviewRequestJsonhalReadEmbedded? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestJsonhalRead &&
        other.links == links &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.embedded == embedded;
  }

  @override
  int get hashCode =>
      links.hashCode +
      id.hashCode +
      createdAt.hashCode +
      updatedAt.hashCode +
      (embedded == null ? 0 : embedded.hashCode);

  static List<ReviewRequestJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <ReviewRequestJsonhalRead>[];
    }

    return json.fold(<ReviewRequestJsonhalRead>[],
        (List<ReviewRequestJsonhalRead> previousValue, element) {
      final ReviewRequestJsonhalRead? object =
          ReviewRequestJsonhalRead.fromJson(element);
      if (object is ReviewRequestJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewRequestJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewRequestJsonhalRead>{};
    }

    return json.entries.fold(<String, ReviewRequestJsonhalRead>{},
        (Map<String, ReviewRequestJsonhalRead> previousValue, element) {
      final ReviewRequestJsonhalRead? object =
          ReviewRequestJsonhalRead.fromJson(element.value);
      if (object is ReviewRequestJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewRequestJsonhalRead-objects as value to a dart map
  static Map<String, List<ReviewRequestJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewRequestJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewRequestJsonhalRead>>(
          key, ReviewRequestJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReviewRequestJsonhalRead[links=$links, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, embedded=$embedded]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'_links': links.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^links\.'))) {
          previousValue.add(element.split(RegExp(r'^links\.')).last);
        }

        return previousValue;
      })),
      r'id': id,
      r'createdAt': createdAt.toUtc().toIso8601String(),
      r'updatedAt': updatedAt.toUtc().toIso8601String(),
      if (keys == null ||
          keys.any((key) => RegExp(r'^embedded\.').hasMatch(key)))
        r'_embedded': embedded?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^embedded\.'))) {
            previousValue.add(element.split(RegExp(r'^embedded\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
