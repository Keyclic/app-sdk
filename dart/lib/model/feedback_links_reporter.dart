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
  static FeedbackLinksReporter? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return FeedbackLinksReporter(
      href: json[r'href'],
      iriTemplate:
          FeedbackLinksReporterIriTemplate.fromJson(json[r'iriTemplate']),
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

  static List<FeedbackLinksReporter> listFromJson(Iterable? json) {
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
