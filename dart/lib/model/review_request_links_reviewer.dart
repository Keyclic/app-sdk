//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReviewRequestLinksReviewer {
  /// Returns a new [ReviewRequestLinksReviewer] instance.
  ReviewRequestLinksReviewer({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ReviewRequestLinksReviewer] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewRequestLinksReviewer? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReviewRequestLinksReviewer(
      href: json[r'href'],
      iriTemplate:
          ReviewRequestLinksReviewerIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the reviewer associated to the given reviewrequest.
  String? href;

  ReviewRequestLinksReviewerIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestLinksReviewer &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ReviewRequestLinksReviewer> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ReviewRequestLinksReviewer>[];
    }

    return json.fold(<ReviewRequestLinksReviewer>[],
        (List<ReviewRequestLinksReviewer> previousValue, element) {
      final ReviewRequestLinksReviewer? object =
          ReviewRequestLinksReviewer.fromJson(element);
      if (object is ReviewRequestLinksReviewer) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewRequestLinksReviewer> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewRequestLinksReviewer>{};
    }

    return json.entries.fold(<String, ReviewRequestLinksReviewer>{},
        (Map<String, ReviewRequestLinksReviewer> previousValue, element) {
      final ReviewRequestLinksReviewer? object =
          ReviewRequestLinksReviewer.fromJson(element.value);
      if (object is ReviewRequestLinksReviewer) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewRequestLinksReviewer-objects as value to a dart map
  static Map<String, List<ReviewRequestLinksReviewer>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewRequestLinksReviewer>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewRequestLinksReviewer>>(
          key, ReviewRequestLinksReviewer.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReviewRequestLinksReviewer[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'href')) r'href': href,
      if (keys == null ||
          keys.any((key) => RegExp(r'^iriTemplate\.').hasMatch(key)))
        r'iriTemplate': iriTemplate?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^iriTemplate\.'))) {
            previousValue.add(element.split(RegExp(r'^iriTemplate\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
