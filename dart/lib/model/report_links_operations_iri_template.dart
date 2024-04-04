//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportLinksOperationsIriTemplate {
  /// Returns a new [ReportLinksOperationsIriTemplate] instance.
  ReportLinksOperationsIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReportLinksOperationsIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportLinksOperationsIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReportLinksOperationsIriTemplate(
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

    return other is ReportLinksOperationsIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReportLinksOperationsIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ReportLinksOperationsIriTemplate>[];
    }

    return json.fold(<ReportLinksOperationsIriTemplate>[],
        (List<ReportLinksOperationsIriTemplate> previousValue, element) {
      final ReportLinksOperationsIriTemplate? object =
          ReportLinksOperationsIriTemplate.fromJson(element);
      if (object is ReportLinksOperationsIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportLinksOperationsIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksOperationsIriTemplate>{};
    }

    return json.entries.fold(<String, ReportLinksOperationsIriTemplate>{},
        (Map<String, ReportLinksOperationsIriTemplate> previousValue, element) {
      final ReportLinksOperationsIriTemplate? object =
          ReportLinksOperationsIriTemplate.fromJson(element.value);
      if (object is ReportLinksOperationsIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportLinksOperationsIriTemplate-objects as value to a dart map
  static Map<String, List<ReportLinksOperationsIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportLinksOperationsIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportLinksOperationsIriTemplate>>(
          key, ReportLinksOperationsIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'ReportLinksOperationsIriTemplate[mapping=$mapping]';

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
