//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportLinksWorkflow {
  /// Returns a new [ReportLinksWorkflow] instance.
  ReportLinksWorkflow({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ReportLinksWorkflow] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportLinksWorkflow? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReportLinksWorkflow(
      href: json[r'href'],
      iriTemplate:
          ReportLinksWorkflowIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the workflow associated to the given report.
  String? href;

  ReportLinksWorkflowIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksWorkflow &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ReportLinksWorkflow> listFromJson(Iterable? json) {
    if (json == null) {
      return <ReportLinksWorkflow>[];
    }

    return json.fold(<ReportLinksWorkflow>[],
        (List<ReportLinksWorkflow> previousValue, element) {
      final ReportLinksWorkflow? object = ReportLinksWorkflow.fromJson(element);
      if (object is ReportLinksWorkflow) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportLinksWorkflow> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksWorkflow>{};
    }

    return json.entries.fold(<String, ReportLinksWorkflow>{},
        (Map<String, ReportLinksWorkflow> previousValue, element) {
      final ReportLinksWorkflow? object =
          ReportLinksWorkflow.fromJson(element.value);
      if (object is ReportLinksWorkflow) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportLinksWorkflow-objects as value to a dart map
  static Map<String, List<ReportLinksWorkflow>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportLinksWorkflow>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportLinksWorkflow>>(
          key, ReportLinksWorkflow.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReportLinksWorkflow[href=$href, iriTemplate=$iriTemplate]';

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
