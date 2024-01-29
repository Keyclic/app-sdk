//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportLinksCreatedByIriTemplate {
  /// Returns a new [ReportLinksCreatedByIriTemplate] instance.
  ReportLinksCreatedByIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReportLinksCreatedByIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportLinksCreatedByIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReportLinksCreatedByIriTemplate(
      mapping: ContributionLinksContributorIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  ContributionLinksContributorIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksCreatedByIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReportLinksCreatedByIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ReportLinksCreatedByIriTemplate>[];
    }

    return json.fold(<ReportLinksCreatedByIriTemplate>[],
        (List<ReportLinksCreatedByIriTemplate> previousValue, element) {
      final ReportLinksCreatedByIriTemplate? object =
          ReportLinksCreatedByIriTemplate.fromJson(element);
      if (object is ReportLinksCreatedByIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportLinksCreatedByIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksCreatedByIriTemplate>{};
    }

    return json.entries.fold(<String, ReportLinksCreatedByIriTemplate>{},
        (Map<String, ReportLinksCreatedByIriTemplate> previousValue, element) {
      final ReportLinksCreatedByIriTemplate? object =
          ReportLinksCreatedByIriTemplate.fromJson(element.value);
      if (object is ReportLinksCreatedByIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportLinksCreatedByIriTemplate-objects as value to a dart map
  static Map<String, List<ReportLinksCreatedByIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportLinksCreatedByIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportLinksCreatedByIriTemplate>>(
          key, ReportLinksCreatedByIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'ReportLinksCreatedByIriTemplate[mapping=$mapping]';

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
