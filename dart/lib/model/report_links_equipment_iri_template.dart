//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportLinksEquipmentIriTemplate {
  /// Returns a new [ReportLinksEquipmentIriTemplate] instance.
  ReportLinksEquipmentIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReportLinksEquipmentIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportLinksEquipmentIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReportLinksEquipmentIriTemplate(
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

    return other is ReportLinksEquipmentIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReportLinksEquipmentIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ReportLinksEquipmentIriTemplate>[];
    }

    return json.fold(<ReportLinksEquipmentIriTemplate>[],
        (List<ReportLinksEquipmentIriTemplate> previousValue, element) {
      final ReportLinksEquipmentIriTemplate? object =
          ReportLinksEquipmentIriTemplate.fromJson(element);
      if (object is ReportLinksEquipmentIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportLinksEquipmentIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksEquipmentIriTemplate>{};
    }

    return json.entries.fold(<String, ReportLinksEquipmentIriTemplate>{},
        (Map<String, ReportLinksEquipmentIriTemplate> previousValue, element) {
      final ReportLinksEquipmentIriTemplate? object =
          ReportLinksEquipmentIriTemplate.fromJson(element.value);
      if (object is ReportLinksEquipmentIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportLinksEquipmentIriTemplate-objects as value to a dart map
  static Map<String, List<ReportLinksEquipmentIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportLinksEquipmentIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportLinksEquipmentIriTemplate>>(
          key, ReportLinksEquipmentIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'ReportLinksEquipmentIriTemplate[mapping=$mapping]';

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
