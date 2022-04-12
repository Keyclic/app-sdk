//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportLinksSelf {
  /// Returns a new [ReportLinksSelf] instance.
  ReportLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ReportLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportLinksSelf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReportLinksSelf(
      href: json[r'href'],
      iriTemplate: ReportLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given report.
  String? href;

  ReportLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ReportLinksSelf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ReportLinksSelf>[];
    }
    return json
        .map((value) {
          return ReportLinksSelf.fromJson(value);
        })
        .whereType<ReportLinksSelf>()
        .toList();
  }

  static Map<String, ReportLinksSelf> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksSelf>{};
    }

    final map = json.map((key, value) => MapEntry<String, ReportLinksSelf?>(
        key, ReportLinksSelf.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ReportLinksSelf>;
  }

  // maps a json object with a list of ReportLinksSelf-objects as value to a dart map
  static Map<String, List<ReportLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ReportLinksSelf>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ReportLinksSelf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ReportLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
