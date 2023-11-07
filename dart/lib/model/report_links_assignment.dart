//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportLinksAssignment {
  /// Returns a new [ReportLinksAssignment] instance.
  ReportLinksAssignment({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ReportLinksAssignment] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportLinksAssignment? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReportLinksAssignment(
      href: json[r'href'],
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : ReportLinksAssignmentIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the assignment associated to the given report.
  String? href;

  ReportLinksAssignmentIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksAssignment &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ReportLinksAssignment> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <ReportLinksAssignment>[];
    }

    return json.fold(<ReportLinksAssignment>[],
        (List<ReportLinksAssignment> previousValue, element) {
      final ReportLinksAssignment? object =
          ReportLinksAssignment.fromJson(element);
      if (object is ReportLinksAssignment) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportLinksAssignment> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksAssignment>{};
    }

    return json.entries.fold(<String, ReportLinksAssignment>{},
        (Map<String, ReportLinksAssignment> previousValue, element) {
      final ReportLinksAssignment? object =
          ReportLinksAssignment.fromJson(element.value);
      if (object is ReportLinksAssignment) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportLinksAssignment-objects as value to a dart map
  static Map<String, List<ReportLinksAssignment>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportLinksAssignment>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportLinksAssignment>>(
          key, ReportLinksAssignment.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReportLinksAssignment[href=$href, iriTemplate=$iriTemplate]';

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
