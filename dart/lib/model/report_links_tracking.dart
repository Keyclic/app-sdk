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
    return json
        .map((value) {
          return ReportLinksTracking.fromJson(value);
        })
        .whereType<ReportLinksTracking>()
        .toList();
  }

  static Map<String, ReportLinksTracking> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksTracking>{};
    }

    final map = json.map((key, value) => MapEntry<String, ReportLinksTracking?>(
        key, ReportLinksTracking.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ReportLinksTracking>;
  }

  // maps a json object with a list of ReportLinksTracking-objects as value to a dart map
  static Map<String, List<ReportLinksTracking>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ReportLinksTracking>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ReportLinksTracking.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ReportLinksTracking[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
