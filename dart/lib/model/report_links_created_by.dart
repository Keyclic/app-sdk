//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportLinksCreatedBy {
  /// Returns a new [ReportLinksCreatedBy] instance.
  ReportLinksCreatedBy({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ReportLinksCreatedBy] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportLinksCreatedBy? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReportLinksCreatedBy(
      href: json[r'href'],
      iriTemplate:
          ReportLinksCreatedByIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the createdBy associated to the given report.
  String? href;

  ReportLinksCreatedByIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksCreatedBy &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ReportLinksCreatedBy> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ReportLinksCreatedBy>[];
    }

    return json.fold(<ReportLinksCreatedBy>[],
        (List<ReportLinksCreatedBy> previousValue, element) {
      final ReportLinksCreatedBy? object =
          ReportLinksCreatedBy.fromJson(element);
      if (object is ReportLinksCreatedBy) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportLinksCreatedBy> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksCreatedBy>{};
    }

    return json.entries.fold(<String, ReportLinksCreatedBy>{},
        (Map<String, ReportLinksCreatedBy> previousValue, element) {
      final ReportLinksCreatedBy? object =
          ReportLinksCreatedBy.fromJson(element.value);
      if (object is ReportLinksCreatedBy) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportLinksCreatedBy-objects as value to a dart map
  static Map<String, List<ReportLinksCreatedBy>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportLinksCreatedBy>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportLinksCreatedBy>>(
          key, ReportLinksCreatedBy.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReportLinksCreatedBy[href=$href, iriTemplate=$iriTemplate]';

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
