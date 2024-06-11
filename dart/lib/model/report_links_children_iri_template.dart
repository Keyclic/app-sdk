//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportLinksChildrenIriTemplate {
  /// Returns a new [ReportLinksChildrenIriTemplate] instance.
  ReportLinksChildrenIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReportLinksChildrenIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportLinksChildrenIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReportLinksChildrenIriTemplate(
      mapping: ReportLinksChildrenIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  ReportLinksChildrenIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksChildrenIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReportLinksChildrenIriTemplate> listFromJson(Iterable? json) {
    if (json == null) {
      return <ReportLinksChildrenIriTemplate>[];
    }

    return json.fold(<ReportLinksChildrenIriTemplate>[],
        (List<ReportLinksChildrenIriTemplate> previousValue, element) {
      final ReportLinksChildrenIriTemplate? object =
          ReportLinksChildrenIriTemplate.fromJson(element);
      if (object is ReportLinksChildrenIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportLinksChildrenIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksChildrenIriTemplate>{};
    }

    return json.entries.fold(<String, ReportLinksChildrenIriTemplate>{},
        (Map<String, ReportLinksChildrenIriTemplate> previousValue, element) {
      final ReportLinksChildrenIriTemplate? object =
          ReportLinksChildrenIriTemplate.fromJson(element.value);
      if (object is ReportLinksChildrenIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportLinksChildrenIriTemplate-objects as value to a dart map
  static Map<String, List<ReportLinksChildrenIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportLinksChildrenIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportLinksChildrenIriTemplate>>(
          key, ReportLinksChildrenIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'ReportLinksChildrenIriTemplate[mapping=$mapping]';

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
