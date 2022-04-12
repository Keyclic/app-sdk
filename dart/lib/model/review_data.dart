//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReviewData {
  /// Returns a new [ReviewData] instance.
  ReviewData({
    this.reviewBody,
    required this.reviewRating,
    required this.reviewRequest,
  });

  /// Returns a new [ReviewData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReviewData(
      reviewBody: json[r'reviewBody'],
      reviewRating: json[r'reviewRating'] == null
          ? null
          : json[r'reviewRating'].toDouble(),
      reviewRequest: json[r'reviewRequest'],
    );
  }

  String? reviewBody;

  num reviewRating;

  String reviewRequest;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewData &&
        other.reviewBody == reviewBody &&
        other.reviewRating == reviewRating &&
        other.reviewRequest == reviewRequest;
  }

  @override
  int get hashCode =>
      (reviewBody == null ? 0 : reviewBody.hashCode) +
      reviewRating.hashCode +
      reviewRequest.hashCode;

  static List<ReviewData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ReviewData>[];
    }
    return json
        .map((value) {
          return ReviewData.fromJson(value);
        })
        .whereType<ReviewData>()
        .toList();
  }

  static Map<String, ReviewData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewData>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ReviewData?>(key, ReviewData.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ReviewData>;
  }

  // maps a json object with a list of ReviewData-objects as value to a dart map
  static Map<String, List<ReviewData>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ReviewData>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ReviewData.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ReviewData[reviewBody=$reviewBody, reviewRating=$reviewRating, reviewRequest=$reviewRequest]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (reviewBody != null) r'reviewBody': reviewBody,
      r'reviewRating': reviewRating,
      r'reviewRequest': reviewRequest,
    };
  }
}
