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
  static ReportLinksOperations? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReportLinksOperations(
      href: json[r'href'],
      iriTemplate:
          ReportLinksOperationsIriTemplate.fromJson(json[r'iriTemplate']),
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

  static List<ReportLinksOperations> listFromJson(List<dynamic>? json) {
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
