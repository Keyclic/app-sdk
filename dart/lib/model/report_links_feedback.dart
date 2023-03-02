//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ReportLinksFeedback {
  /// Returns a new [ReportLinksFeedback] instance.
  ReportLinksFeedback({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ReportLinksFeedback] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ReportLinksFeedback.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportLinksFeedback(
      href: json[r'href'],
      iriTemplate:
          ReportLinksFeedbackIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the feedback associated to the given report.
  String href;

  ReportLinksFeedbackIriTemplate iriTemplate;

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

  static List<ReportLinksFeedback> listFromJson(List<dynamic> json) {
    return <ReportLinksFeedback>[
      if (json is List)
        for (dynamic value in json) ReportLinksFeedback.fromJson(value),
    ];
  }

  static Map<String, ReportLinksFeedback> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ReportLinksFeedback>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReportLinksFeedback.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ReportLinksFeedback-objects as value to a dart map
  static Map<String, List<ReportLinksFeedback>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ReportLinksFeedback>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReportLinksFeedback.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ReportLinksFeedback[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
