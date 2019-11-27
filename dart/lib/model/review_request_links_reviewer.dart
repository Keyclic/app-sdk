part of keyclic_sdk_api.api;

class ReviewRequestLinksReviewer {
  ReviewRequestLinksReviewer({
    this.href,
    this.iriTemplate,
  });

  ReviewRequestLinksReviewer.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        ReviewRequestLinksReviewerIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the reviewer associated to the given reviewrequest. */
  String href;

  ReviewRequestLinksReviewerIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestLinksReviewer &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= href?.hashCode ?? 0;
    hashCode ^= iriTemplate?.hashCode ?? 0;

    return hashCode;
  }

  static List<ReviewRequestLinksReviewer> listFromJson(List<dynamic> json) {
    return json == null
        ? <ReviewRequestLinksReviewer>[]
        : json
            .map((dynamic value) => ReviewRequestLinksReviewer.fromJson(value))
            .toList();
  }

  static Map<String, ReviewRequestLinksReviewer> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReviewRequestLinksReviewer>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReviewRequestLinksReviewer.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'ReviewRequestLinksReviewer[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
