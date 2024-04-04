//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class AssignmentLinksReportIriTemplate {
  /// Returns a new [AssignmentLinksReportIriTemplate] instance.
  AssignmentLinksReportIriTemplate({
    this.mapping,
  });

  /// Returns a new [AssignmentLinksReportIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssignmentLinksReportIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return AssignmentLinksReportIriTemplate(
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

    return other is AssignmentLinksReportIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<AssignmentLinksReportIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <AssignmentLinksReportIriTemplate>[];
    }

    return json.fold(<AssignmentLinksReportIriTemplate>[],
        (List<AssignmentLinksReportIriTemplate> previousValue, element) {
      final AssignmentLinksReportIriTemplate? object =
          AssignmentLinksReportIriTemplate.fromJson(element);
      if (object is AssignmentLinksReportIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AssignmentLinksReportIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignmentLinksReportIriTemplate>{};
    }

    return json.entries.fold(<String, AssignmentLinksReportIriTemplate>{},
        (Map<String, AssignmentLinksReportIriTemplate> previousValue, element) {
      final AssignmentLinksReportIriTemplate? object =
          AssignmentLinksReportIriTemplate.fromJson(element.value);
      if (object is AssignmentLinksReportIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AssignmentLinksReportIriTemplate-objects as value to a dart map
  static Map<String, List<AssignmentLinksReportIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AssignmentLinksReportIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AssignmentLinksReportIriTemplate>>(
          key, AssignmentLinksReportIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'AssignmentLinksReportIriTemplate[mapping=$mapping]';

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
