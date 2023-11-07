//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackLinksReporter {
  /// Returns a new [FeedbackLinksReporter] instance.
  FeedbackLinksReporter({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [FeedbackLinksReporter] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackLinksReporter? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksReporter(
      href: json[r'href'],
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : FeedbackLinksReporterIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the reporter associated to the given feedback.
  String? href;

  FeedbackLinksReporterIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksReporter &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<FeedbackLinksReporter> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <FeedbackLinksReporter>[];
    }

    return json.fold(<FeedbackLinksReporter>[],
        (List<FeedbackLinksReporter> previousValue, element) {
      final FeedbackLinksReporter? object =
          FeedbackLinksReporter.fromJson(element);
      if (object is FeedbackLinksReporter) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackLinksReporter> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackLinksReporter>{};
    }

    return json.entries.fold(<String, FeedbackLinksReporter>{},
        (Map<String, FeedbackLinksReporter> previousValue, element) {
      final FeedbackLinksReporter? object =
          FeedbackLinksReporter.fromJson(element.value);
      if (object is FeedbackLinksReporter) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackLinksReporter-objects as value to a dart map
  static Map<String, List<FeedbackLinksReporter>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackLinksReporter>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackLinksReporter>>(
          key, FeedbackLinksReporter.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'FeedbackLinksReporter[href=$href, iriTemplate=$iriTemplate]';

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
