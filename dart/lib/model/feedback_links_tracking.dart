//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackLinksTracking {
  /// Returns a new [FeedbackLinksTracking] instance.
  FeedbackLinksTracking({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [FeedbackLinksTracking] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackLinksTracking? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksTracking(
      href: json[r'href'],
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : FeedbackLinksTrackingIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the tracking associated to the given feedback.
  String? href;

  FeedbackLinksTrackingIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksTracking &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<FeedbackLinksTracking> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <FeedbackLinksTracking>[];
    }

    return json.fold(<FeedbackLinksTracking>[],
        (List<FeedbackLinksTracking> previousValue, element) {
      final FeedbackLinksTracking? object =
          FeedbackLinksTracking.fromJson(element);
      if (object is FeedbackLinksTracking) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackLinksTracking> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackLinksTracking>{};
    }

    return json.entries.fold(<String, FeedbackLinksTracking>{},
        (Map<String, FeedbackLinksTracking> previousValue, element) {
      final FeedbackLinksTracking? object =
          FeedbackLinksTracking.fromJson(element.value);
      if (object is FeedbackLinksTracking) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackLinksTracking-objects as value to a dart map
  static Map<String, List<FeedbackLinksTracking>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackLinksTracking>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackLinksTracking>>(
          key, FeedbackLinksTracking.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'FeedbackLinksTracking[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && href != null) || (keys?.contains(r'href') ?? false))
        r'href': href,
      if ((keys == null && iriTemplate != null) ||
          (keys?.contains(r'iriTemplate') ?? false))
        r'iriTemplate': iriTemplate?.toJson(),
    };
  }
}
