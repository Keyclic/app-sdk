//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportLinksOrganizationIriTemplate {
  /// Returns a new [ReportLinksOrganizationIriTemplate] instance.
  ReportLinksOrganizationIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReportLinksOrganizationIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportLinksOrganizationIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReportLinksOrganizationIriTemplate(
      mapping: CategoryLinksOrganizationIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  CategoryLinksOrganizationIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksOrganizationIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReportLinksOrganizationIriTemplate> listFromJson(Iterable? json) {
    if (json == null) {
      return <ReportLinksOrganizationIriTemplate>[];
    }

    return json.fold(<ReportLinksOrganizationIriTemplate>[],
        (List<ReportLinksOrganizationIriTemplate> previousValue, element) {
      final ReportLinksOrganizationIriTemplate? object =
          ReportLinksOrganizationIriTemplate.fromJson(element);
      if (object is ReportLinksOrganizationIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksOrganizationIriTemplate>{};
    }

    return json.entries.fold(<String, ReportLinksOrganizationIriTemplate>{},
        (Map<String, ReportLinksOrganizationIriTemplate> previousValue,
            element) {
      final ReportLinksOrganizationIriTemplate? object =
          ReportLinksOrganizationIriTemplate.fromJson(element.value);
      if (object is ReportLinksOrganizationIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportLinksOrganizationIriTemplate-objects as value to a dart map
  static Map<String, List<ReportLinksOrganizationIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportLinksOrganizationIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportLinksOrganizationIriTemplate>>(
          key, ReportLinksOrganizationIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'ReportLinksOrganizationIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^mapping\.').hasMatch(key)))
        r'mapping': mapping?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^mapping\.'))) {
            previousValue.add(element.split(RegExp(r'^mapping\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
