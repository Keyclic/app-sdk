//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportLinksEquipmentsIriTemplate {
  /// Returns a new [ReportLinksEquipmentsIriTemplate] instance.
  ReportLinksEquipmentsIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReportLinksEquipmentsIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportLinksEquipmentsIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReportLinksEquipmentsIriTemplate(
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

    return other is ReportLinksEquipmentsIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReportLinksEquipmentsIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ReportLinksEquipmentsIriTemplate>[];
    }

    return json.fold(<ReportLinksEquipmentsIriTemplate>[],
        (List<ReportLinksEquipmentsIriTemplate> previousValue, element) {
      final ReportLinksEquipmentsIriTemplate? object =
          ReportLinksEquipmentsIriTemplate.fromJson(element);
      if (object is ReportLinksEquipmentsIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportLinksEquipmentsIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksEquipmentsIriTemplate>{};
    }

    return json.entries.fold(<String, ReportLinksEquipmentsIriTemplate>{},
        (Map<String, ReportLinksEquipmentsIriTemplate> previousValue, element) {
      final ReportLinksEquipmentsIriTemplate? object =
          ReportLinksEquipmentsIriTemplate.fromJson(element.value);
      if (object is ReportLinksEquipmentsIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportLinksEquipmentsIriTemplate-objects as value to a dart map
  static Map<String, List<ReportLinksEquipmentsIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportLinksEquipmentsIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportLinksEquipmentsIriTemplate>>(
          key, ReportLinksEquipmentsIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'ReportLinksEquipmentsIriTemplate[mapping=$mapping]';

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
