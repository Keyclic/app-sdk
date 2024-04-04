//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportLinksChildrenIriTemplateMapping {
  /// Returns a new [ReportLinksChildrenIriTemplateMapping] instance.
  ReportLinksChildrenIriTemplateMapping({
    this.organization,
    this.parent,
  });

  /// Returns a new [ReportLinksChildrenIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportLinksChildrenIriTemplateMapping? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReportLinksChildrenIriTemplateMapping(
      organization: json[r'organization'],
      parent: json[r'parent'],
    );
  }

  String? organization;

  String? parent;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksChildrenIriTemplateMapping &&
        other.organization == organization &&
        other.parent == parent;
  }

  @override
  int get hashCode =>
      (organization == null ? 0 : organization.hashCode) +
      (parent == null ? 0 : parent.hashCode);

  static List<ReportLinksChildrenIriTemplateMapping> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ReportLinksChildrenIriTemplateMapping>[];
    }

    return json.fold(<ReportLinksChildrenIriTemplateMapping>[],
        (List<ReportLinksChildrenIriTemplateMapping> previousValue, element) {
      final ReportLinksChildrenIriTemplateMapping? object =
          ReportLinksChildrenIriTemplateMapping.fromJson(element);
      if (object is ReportLinksChildrenIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportLinksChildrenIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksChildrenIriTemplateMapping>{};
    }

    return json.entries.fold(<String, ReportLinksChildrenIriTemplateMapping>{},
        (Map<String, ReportLinksChildrenIriTemplateMapping> previousValue,
            element) {
      final ReportLinksChildrenIriTemplateMapping? object =
          ReportLinksChildrenIriTemplateMapping.fromJson(element.value);
      if (object is ReportLinksChildrenIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportLinksChildrenIriTemplateMapping-objects as value to a dart map
  static Map<String, List<ReportLinksChildrenIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportLinksChildrenIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportLinksChildrenIriTemplateMapping>>(
          key, ReportLinksChildrenIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReportLinksChildrenIriTemplateMapping[organization=$organization, parent=$parent]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'organization'))
        r'organization': organization,
      if (keys == null || keys.contains(r'parent')) r'parent': parent,
    };
  }
}
