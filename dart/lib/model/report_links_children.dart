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
  static ReportLinksChildren? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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

    return json.fold(<ReportLinksChildren>[],
        (List<ReportLinksChildren> previousValue, element) {
      final ReportLinksChildren? object = ReportLinksChildren.fromJson(element);
      if (object is ReportLinksChildren) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportLinksChildren> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksChildren>{};
    }

    return json.entries.fold(<String, ReportLinksChildren>{},
        (Map<String, ReportLinksChildren> previousValue, element) {
      final ReportLinksChildren? object =
          ReportLinksChildren.fromJson(element.value);
      if (object is ReportLinksChildren) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportLinksChildren-objects as value to a dart map
  static Map<String, List<ReportLinksChildren>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportLinksChildren>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportLinksChildren>>(
          key, ReportLinksChildren.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReportLinksChildren[href=$href, iriTemplate=$iriTemplate]';

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
