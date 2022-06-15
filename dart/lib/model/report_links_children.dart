//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportLinksChildren {
  /// Returns a new [ReportLinksChildren] instance.
  ReportLinksChildren({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ReportLinksChildren] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportLinksChildren? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReportLinksChildren(
      href: json[r'href'],
      iriTemplate:
          ReportLinksChildrenIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the children associated to the given report.
  String? href;

  ReportLinksChildrenIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksChildren &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ReportLinksChildren> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ReportLinksChildren>[];
    }
    return json
        .map((value) {
          return ReportLinksChildren.fromJson(value);
        })
        .whereType<ReportLinksChildren>()
        .toList();
  }

  static Map<String, ReportLinksChildren> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksChildren>{};
    }

    final map = json.map((key, value) => MapEntry<String, ReportLinksChildren?>(
        key, ReportLinksChildren.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ReportLinksChildren>;
  }

  // maps a json object with a list of ReportLinksChildren-objects as value to a dart map
  static Map<String, List<ReportLinksChildren>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ReportLinksChildren>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ReportLinksChildren.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ReportLinksChildren[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
