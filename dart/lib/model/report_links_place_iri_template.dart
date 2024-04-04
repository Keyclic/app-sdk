//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportLinksPlaceIriTemplate {
  /// Returns a new [ReportLinksPlaceIriTemplate] instance.
  ReportLinksPlaceIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReportLinksPlaceIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportLinksPlaceIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReportLinksPlaceIriTemplate(
      mapping: BookmarkLinksPlaceIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  BookmarkLinksPlaceIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksPlaceIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReportLinksPlaceIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ReportLinksPlaceIriTemplate>[];
    }

    return json.fold(<ReportLinksPlaceIriTemplate>[],
        (List<ReportLinksPlaceIriTemplate> previousValue, element) {
      final ReportLinksPlaceIriTemplate? object =
          ReportLinksPlaceIriTemplate.fromJson(element);
      if (object is ReportLinksPlaceIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportLinksPlaceIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksPlaceIriTemplate>{};
    }

    return json.entries.fold(<String, ReportLinksPlaceIriTemplate>{},
        (Map<String, ReportLinksPlaceIriTemplate> previousValue, element) {
      final ReportLinksPlaceIriTemplate? object =
          ReportLinksPlaceIriTemplate.fromJson(element.value);
      if (object is ReportLinksPlaceIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportLinksPlaceIriTemplate-objects as value to a dart map
  static Map<String, List<ReportLinksPlaceIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportLinksPlaceIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportLinksPlaceIriTemplate>>(
          key, ReportLinksPlaceIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'ReportLinksPlaceIriTemplate[mapping=$mapping]';

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
