//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportLinksPlace {
  /// Returns a new [ReportLinksPlace] instance.
  ReportLinksPlace({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ReportLinksPlace] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportLinksPlace? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReportLinksPlace(
      href: json[r'href'],
      iriTemplate: ReportLinksPlaceIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the place associated to the given report.
  String? href;

  ReportLinksPlaceIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksPlace &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ReportLinksPlace> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ReportLinksPlace>[];
    }
    return json
        .map((value) {
          return ReportLinksPlace.fromJson(value);
        })
        .whereType<ReportLinksPlace>()
        .toList();
  }

  static Map<String, ReportLinksPlace> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksPlace>{};
    }

    final map = json.map((key, value) => MapEntry<String, ReportLinksPlace?>(
        key, ReportLinksPlace.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ReportLinksPlace>;
  }

  // maps a json object with a list of ReportLinksPlace-objects as value to a dart map
  static Map<String, List<ReportLinksPlace>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ReportLinksPlace>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ReportLinksPlace.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ReportLinksPlace[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
