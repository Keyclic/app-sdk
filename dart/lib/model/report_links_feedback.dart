//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportLinksFeedback {
  /// Returns a new [ReportLinksFeedback] instance.
  ReportLinksFeedback({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ReportLinksFeedback] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportLinksFeedback? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReportLinksFeedback(
      href: json[r'href'],
      iriTemplate:
          ReportLinksFeedbackIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the feedback associated to the given report.
  String? href;

  ReportLinksFeedbackIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksFeedback &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ReportLinksFeedback> listFromJson(Iterable? json) {
    if (json == null) {
      return <ReportLinksFeedback>[];
    }

    return json.fold(<ReportLinksFeedback>[],
        (List<ReportLinksFeedback> previousValue, element) {
      final ReportLinksFeedback? object = ReportLinksFeedback.fromJson(element);
      if (object is ReportLinksFeedback) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportLinksFeedback> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksFeedback>{};
    }

    return json.entries.fold(<String, ReportLinksFeedback>{},
        (Map<String, ReportLinksFeedback> previousValue, element) {
      final ReportLinksFeedback? object =
          ReportLinksFeedback.fromJson(element.value);
      if (object is ReportLinksFeedback) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportLinksFeedback-objects as value to a dart map
  static Map<String, List<ReportLinksFeedback>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportLinksFeedback>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportLinksFeedback>>(
          key, ReportLinksFeedback.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReportLinksFeedback[href=$href, iriTemplate=$iriTemplate]';

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
