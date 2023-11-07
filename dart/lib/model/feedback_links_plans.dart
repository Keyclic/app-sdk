//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackLinksPlans {
  /// Returns a new [FeedbackLinksPlans] instance.
  FeedbackLinksPlans({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [FeedbackLinksPlans] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackLinksPlans? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksPlans(
      href: json[r'href'],
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : FeedbackLinksPlansIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the plans associated to the given feedback.
  String? href;

  FeedbackLinksPlansIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksPlans &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<FeedbackLinksPlans> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <FeedbackLinksPlans>[];
    }

    return json.fold(<FeedbackLinksPlans>[],
        (List<FeedbackLinksPlans> previousValue, element) {
      final FeedbackLinksPlans? object = FeedbackLinksPlans.fromJson(element);
      if (object is FeedbackLinksPlans) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackLinksPlans> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackLinksPlans>{};
    }

    return json.entries.fold(<String, FeedbackLinksPlans>{},
        (Map<String, FeedbackLinksPlans> previousValue, element) {
      final FeedbackLinksPlans? object =
          FeedbackLinksPlans.fromJson(element.value);
      if (object is FeedbackLinksPlans) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackLinksPlans-objects as value to a dart map
  static Map<String, List<FeedbackLinksPlans>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackLinksPlans>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackLinksPlans>>(
          key, FeedbackLinksPlans.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'FeedbackLinksPlans[href=$href, iriTemplate=$iriTemplate]';

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
