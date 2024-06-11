//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportLinksTrackingIriTemplate {
  /// Returns a new [ReportLinksTrackingIriTemplate] instance.
  ReportLinksTrackingIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReportLinksTrackingIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportLinksTrackingIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReportLinksTrackingIriTemplate(
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

    return other is ReportLinksTrackingIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReportLinksTrackingIriTemplate> listFromJson(Iterable? json) {
    if (json == null) {
      return <ReportLinksTrackingIriTemplate>[];
    }

    return json.fold(<ReportLinksTrackingIriTemplate>[],
        (List<ReportLinksTrackingIriTemplate> previousValue, element) {
      final ReportLinksTrackingIriTemplate? object =
          ReportLinksTrackingIriTemplate.fromJson(element);
      if (object is ReportLinksTrackingIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportLinksTrackingIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksTrackingIriTemplate>{};
    }

    return json.entries.fold(<String, ReportLinksTrackingIriTemplate>{},
        (Map<String, ReportLinksTrackingIriTemplate> previousValue, element) {
      final ReportLinksTrackingIriTemplate? object =
          ReportLinksTrackingIriTemplate.fromJson(element.value);
      if (object is ReportLinksTrackingIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportLinksTrackingIriTemplate-objects as value to a dart map
  static Map<String, List<ReportLinksTrackingIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportLinksTrackingIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportLinksTrackingIriTemplate>>(
          key, ReportLinksTrackingIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'ReportLinksTrackingIriTemplate[mapping=$mapping]';

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
