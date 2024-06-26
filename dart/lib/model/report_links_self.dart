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
  static ReportLinksSelf? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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

  static List<ReportLinksSelf> listFromJson(Iterable? json) {
    if (json == null) {
      return <ReportLinksSelf>[];
    }

    return json.fold(<ReportLinksSelf>[],
        (List<ReportLinksSelf> previousValue, element) {
      final ReportLinksSelf? object = ReportLinksSelf.fromJson(element);
      if (object is ReportLinksSelf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportLinksSelf> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksSelf>{};
    }

    return json.entries.fold(<String, ReportLinksSelf>{},
        (Map<String, ReportLinksSelf> previousValue, element) {
      final ReportLinksSelf? object = ReportLinksSelf.fromJson(element.value);
      if (object is ReportLinksSelf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportLinksSelf-objects as value to a dart map
  static Map<String, List<ReportLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportLinksSelf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportLinksSelf>>(
          key, ReportLinksSelf.listFromJson(value));
    });
  }

  @override
  String toString() => 'ReportLinksSelf[href=$href, iriTemplate=$iriTemplate]';

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
