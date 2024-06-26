//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportLinksCategory {
  /// Returns a new [ReportLinksCategory] instance.
  ReportLinksCategory({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ReportLinksCategory] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportLinksCategory? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReportLinksCategory(
      href: json[r'href'],
      iriTemplate:
          ReportLinksCategoryIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the category associated to the given report.
  String? href;

  ReportLinksCategoryIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksCategory &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ReportLinksCategory> listFromJson(Iterable? json) {
    if (json == null) {
      return <ReportLinksCategory>[];
    }

    return json.fold(<ReportLinksCategory>[],
        (List<ReportLinksCategory> previousValue, element) {
      final ReportLinksCategory? object = ReportLinksCategory.fromJson(element);
      if (object is ReportLinksCategory) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportLinksCategory> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksCategory>{};
    }

    return json.entries.fold(<String, ReportLinksCategory>{},
        (Map<String, ReportLinksCategory> previousValue, element) {
      final ReportLinksCategory? object =
          ReportLinksCategory.fromJson(element.value);
      if (object is ReportLinksCategory) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportLinksCategory-objects as value to a dart map
  static Map<String, List<ReportLinksCategory>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportLinksCategory>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportLinksCategory>>(
          key, ReportLinksCategory.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReportLinksCategory[href=$href, iriTemplate=$iriTemplate]';

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
