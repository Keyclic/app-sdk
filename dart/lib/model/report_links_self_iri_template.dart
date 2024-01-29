//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportLinksSelfIriTemplate {
  /// Returns a new [ReportLinksSelfIriTemplate] instance.
  ReportLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReportLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportLinksSelfIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReportLinksSelfIriTemplate(
      mapping:
          AssignmentLinksReportIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  AssignmentLinksReportIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReportLinksSelfIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ReportLinksSelfIriTemplate>[];
    }

    return json.fold(<ReportLinksSelfIriTemplate>[],
        (List<ReportLinksSelfIriTemplate> previousValue, element) {
      final ReportLinksSelfIriTemplate? object =
          ReportLinksSelfIriTemplate.fromJson(element);
      if (object is ReportLinksSelfIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksSelfIriTemplate>{};
    }

    return json.entries.fold(<String, ReportLinksSelfIriTemplate>{},
        (Map<String, ReportLinksSelfIriTemplate> previousValue, element) {
      final ReportLinksSelfIriTemplate? object =
          ReportLinksSelfIriTemplate.fromJson(element.value);
      if (object is ReportLinksSelfIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<ReportLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportLinksSelfIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportLinksSelfIriTemplate>>(
          key, ReportLinksSelfIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'ReportLinksSelfIriTemplate[mapping=$mapping]';

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
