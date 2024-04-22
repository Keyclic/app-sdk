//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReviewRequestLinksSelf {
  /// Returns a new [ReviewRequestLinksSelf] instance.
  ReviewRequestLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ReviewRequestLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewRequestLinksSelf? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReviewRequestLinksSelf(
      href: json[r'href'],
      iriTemplate:
          ReviewRequestLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given reviewrequest.
  String? href;

  ReviewRequestLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ReviewRequestLinksSelf> listFromJson(Iterable? json) {
    if (json == null) {
      return <ReviewRequestLinksSelf>[];
    }

    return json.fold(<ReviewRequestLinksSelf>[],
        (List<ReviewRequestLinksSelf> previousValue, element) {
      final ReviewRequestLinksSelf? object =
          ReviewRequestLinksSelf.fromJson(element);
      if (object is ReviewRequestLinksSelf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewRequestLinksSelf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewRequestLinksSelf>{};
    }

    return json.entries.fold(<String, ReviewRequestLinksSelf>{},
        (Map<String, ReviewRequestLinksSelf> previousValue, element) {
      final ReviewRequestLinksSelf? object =
          ReviewRequestLinksSelf.fromJson(element.value);
      if (object is ReviewRequestLinksSelf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewRequestLinksSelf-objects as value to a dart map
  static Map<String, List<ReviewRequestLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewRequestLinksSelf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewRequestLinksSelf>>(
          key, ReviewRequestLinksSelf.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReviewRequestLinksSelf[href=$href, iriTemplate=$iriTemplate]';

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
