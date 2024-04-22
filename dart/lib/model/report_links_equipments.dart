//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportLinksEquipments {
  /// Returns a new [ReportLinksEquipments] instance.
  ReportLinksEquipments({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ReportLinksEquipments] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportLinksEquipments? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReportLinksEquipments(
      href: json[r'href'],
      iriTemplate:
          ReportLinksEquipmentsIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the equipments associated to the given report.
  String? href;

  ReportLinksEquipmentsIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksEquipments &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ReportLinksEquipments> listFromJson(Iterable? json) {
    if (json == null) {
      return <ReportLinksEquipments>[];
    }

    return json.fold(<ReportLinksEquipments>[],
        (List<ReportLinksEquipments> previousValue, element) {
      final ReportLinksEquipments? object =
          ReportLinksEquipments.fromJson(element);
      if (object is ReportLinksEquipments) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportLinksEquipments> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksEquipments>{};
    }

    return json.entries.fold(<String, ReportLinksEquipments>{},
        (Map<String, ReportLinksEquipments> previousValue, element) {
      final ReportLinksEquipments? object =
          ReportLinksEquipments.fromJson(element.value);
      if (object is ReportLinksEquipments) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportLinksEquipments-objects as value to a dart map
  static Map<String, List<ReportLinksEquipments>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportLinksEquipments>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportLinksEquipments>>(
          key, ReportLinksEquipments.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReportLinksEquipments[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'href')) r'href': href,
      if (keys == null ||
          keys.any((key) => RegExp(r'^iriTemplate\.').hasMatch(key)))
        r'iriTemplate': iriTemplate?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^iriTemplate\.'))) {
            previousValue.add(element.split(RegExp(r'^iriTemplate\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
