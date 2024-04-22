//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportLinksAssetIriTemplate {
  /// Returns a new [ReportLinksAssetIriTemplate] instance.
  ReportLinksAssetIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReportLinksAssetIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportLinksAssetIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReportLinksAssetIriTemplate(
      mapping:
          AssignmentLinksContractIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  AssignmentLinksContractIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksAssetIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReportLinksAssetIriTemplate> listFromJson(Iterable? json) {
    if (json == null) {
      return <ReportLinksAssetIriTemplate>[];
    }

    return json.fold(<ReportLinksAssetIriTemplate>[],
        (List<ReportLinksAssetIriTemplate> previousValue, element) {
      final ReportLinksAssetIriTemplate? object =
          ReportLinksAssetIriTemplate.fromJson(element);
      if (object is ReportLinksAssetIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportLinksAssetIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksAssetIriTemplate>{};
    }

    return json.entries.fold(<String, ReportLinksAssetIriTemplate>{},
        (Map<String, ReportLinksAssetIriTemplate> previousValue, element) {
      final ReportLinksAssetIriTemplate? object =
          ReportLinksAssetIriTemplate.fromJson(element.value);
      if (object is ReportLinksAssetIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportLinksAssetIriTemplate-objects as value to a dart map
  static Map<String, List<ReportLinksAssetIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportLinksAssetIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportLinksAssetIriTemplate>>(
          key, ReportLinksAssetIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'ReportLinksAssetIriTemplate[mapping=$mapping]';

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
