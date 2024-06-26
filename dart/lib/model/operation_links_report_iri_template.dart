//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationLinksReportIriTemplate {
  /// Returns a new [OperationLinksReportIriTemplate] instance.
  OperationLinksReportIriTemplate({
    this.mapping,
  });

  /// Returns a new [OperationLinksReportIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationLinksReportIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return OperationLinksReportIriTemplate(
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

    return other is OperationLinksReportIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<OperationLinksReportIriTemplate> listFromJson(Iterable? json) {
    if (json == null) {
      return <OperationLinksReportIriTemplate>[];
    }

    return json.fold(<OperationLinksReportIriTemplate>[],
        (List<OperationLinksReportIriTemplate> previousValue, element) {
      final OperationLinksReportIriTemplate? object =
          OperationLinksReportIriTemplate.fromJson(element);
      if (object is OperationLinksReportIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OperationLinksReportIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationLinksReportIriTemplate>{};
    }

    return json.entries.fold(<String, OperationLinksReportIriTemplate>{},
        (Map<String, OperationLinksReportIriTemplate> previousValue, element) {
      final OperationLinksReportIriTemplate? object =
          OperationLinksReportIriTemplate.fromJson(element.value);
      if (object is OperationLinksReportIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OperationLinksReportIriTemplate-objects as value to a dart map
  static Map<String, List<OperationLinksReportIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OperationLinksReportIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OperationLinksReportIriTemplate>>(
          key, OperationLinksReportIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'OperationLinksReportIriTemplate[mapping=$mapping]';

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
