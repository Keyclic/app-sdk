//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportLinksTracking {
  /// Returns a new [ReportLinksTracking] instance.
  ReportLinksTracking({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ReportLinksTracking] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportLinksTracking? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReportLinksTracking(
      href: json[r'href'],
      iriTemplate:
          ReportLinksTrackingIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the tracking associated to the given report.
  String? href;

  ReportLinksTrackingIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksTracking &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ReportLinksTracking> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ReportLinksTracking>[];
    }

    return json.fold(<ReportLinksTracking>[],
        (List<ReportLinksTracking> previousValue, element) {
      final ReportLinksTracking? object = ReportLinksTracking.fromJson(element);
      if (object is ReportLinksTracking) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportLinksTracking> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksTracking>{};
    }

    return json.entries.fold(<String, ReportLinksTracking>{},
        (Map<String, ReportLinksTracking> previousValue, element) {
      final ReportLinksTracking? object =
          ReportLinksTracking.fromJson(element.value);
      if (object is ReportLinksTracking) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportLinksTracking-objects as value to a dart map
  static Map<String, List<ReportLinksTracking>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportLinksTracking>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportLinksTracking>>(
          key, ReportLinksTracking.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReportLinksTracking[href=$href, iriTemplate=$iriTemplate]';

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
