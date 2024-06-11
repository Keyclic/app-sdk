//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReviewLinksSelf {
  /// Returns a new [ReviewLinksSelf] instance.
  ReviewLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ReviewLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewLinksSelf? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReviewLinksSelf(
      href: json[r'href'],
      iriTemplate: ReviewLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given review.
  String? href;

  ReviewLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ReviewLinksSelf> listFromJson(Iterable? json) {
    if (json == null) {
      return <ReviewLinksSelf>[];
    }

    return json.fold(<ReviewLinksSelf>[],
        (List<ReviewLinksSelf> previousValue, element) {
      final ReviewLinksSelf? object = ReviewLinksSelf.fromJson(element);
      if (object is ReviewLinksSelf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewLinksSelf> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewLinksSelf>{};
    }

    return json.entries.fold(<String, ReviewLinksSelf>{},
        (Map<String, ReviewLinksSelf> previousValue, element) {
      final ReviewLinksSelf? object = ReviewLinksSelf.fromJson(element.value);
      if (object is ReviewLinksSelf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewLinksSelf-objects as value to a dart map
  static Map<String, List<ReviewLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewLinksSelf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewLinksSelf>>(
          key, ReviewLinksSelf.listFromJson(value));
    });
  }

  @override
  String toString() => 'ReviewLinksSelf[href=$href, iriTemplate=$iriTemplate]';

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
