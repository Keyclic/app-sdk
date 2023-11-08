//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportLinksOperations {
  /// Returns a new [ReportLinksOperations] instance.
  ReportLinksOperations({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ReportLinksOperations] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportLinksOperations? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReportLinksOperations(
      href: json[r'href'],
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : ReportLinksOperationsIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the operations associated to the given report.
  String? href;

  ReportLinksOperationsIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksOperations &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ReportLinksOperations> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <ReportLinksOperations>[];
    }

    return json.fold(<ReportLinksOperations>[],
        (List<ReportLinksOperations> previousValue, element) {
      final ReportLinksOperations? object =
          ReportLinksOperations.fromJson(element);
      if (object is ReportLinksOperations) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportLinksOperations> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksOperations>{};
    }

    return json.entries.fold(<String, ReportLinksOperations>{},
        (Map<String, ReportLinksOperations> previousValue, element) {
      final ReportLinksOperations? object =
          ReportLinksOperations.fromJson(element.value);
      if (object is ReportLinksOperations) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportLinksOperations-objects as value to a dart map
  static Map<String, List<ReportLinksOperations>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportLinksOperations>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportLinksOperations>>(
          key, ReportLinksOperations.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReportLinksOperations[href=$href, iriTemplate=$iriTemplate]';

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
