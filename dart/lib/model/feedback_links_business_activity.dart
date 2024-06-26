//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackLinksBusinessActivity {
  /// Returns a new [FeedbackLinksBusinessActivity] instance.
  FeedbackLinksBusinessActivity({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [FeedbackLinksBusinessActivity] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackLinksBusinessActivity? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return FeedbackLinksBusinessActivity(
      href: json[r'href'],
      iriTemplate: FeedbackLinksBusinessActivityIriTemplate.fromJson(
          json[r'iriTemplate']),
    );
  }

  /// The URI of the businessActivity associated to the given feedback.
  String? href;

  FeedbackLinksBusinessActivityIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksBusinessActivity &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<FeedbackLinksBusinessActivity> listFromJson(Iterable? json) {
    if (json == null) {
      return <FeedbackLinksBusinessActivity>[];
    }

    return json.fold(<FeedbackLinksBusinessActivity>[],
        (List<FeedbackLinksBusinessActivity> previousValue, element) {
      final FeedbackLinksBusinessActivity? object =
          FeedbackLinksBusinessActivity.fromJson(element);
      if (object is FeedbackLinksBusinessActivity) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackLinksBusinessActivity> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackLinksBusinessActivity>{};
    }

    return json.entries.fold(<String, FeedbackLinksBusinessActivity>{},
        (Map<String, FeedbackLinksBusinessActivity> previousValue, element) {
      final FeedbackLinksBusinessActivity? object =
          FeedbackLinksBusinessActivity.fromJson(element.value);
      if (object is FeedbackLinksBusinessActivity) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackLinksBusinessActivity-objects as value to a dart map
  static Map<String, List<FeedbackLinksBusinessActivity>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackLinksBusinessActivity>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackLinksBusinessActivity>>(
          key, FeedbackLinksBusinessActivity.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'FeedbackLinksBusinessActivity[href=$href, iriTemplate=$iriTemplate]';

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
