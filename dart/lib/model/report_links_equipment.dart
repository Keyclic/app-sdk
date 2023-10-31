//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportLinksEquipment {
  /// Returns a new [ReportLinksEquipment] instance.
  ReportLinksEquipment({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ReportLinksEquipment] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportLinksEquipment? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReportLinksEquipment(
      href: json[r'href'],
      iriTemplate:
          ReportLinksEquipmentIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the equipment associated to the given report.
  String? href;

  ReportLinksEquipmentIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksEquipment &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ReportLinksEquipment> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ReportLinksEquipment>[];
    }

    return json.fold(<ReportLinksEquipment>[],
        (List<ReportLinksEquipment> previousValue, element) {
      final ReportLinksEquipment? object =
          ReportLinksEquipment.fromJson(element);
      if (object is ReportLinksEquipment) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportLinksEquipment> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksEquipment>{};
    }

    return json.entries.fold(<String, ReportLinksEquipment>{},
        (Map<String, ReportLinksEquipment> previousValue, element) {
      final ReportLinksEquipment? object =
          ReportLinksEquipment.fromJson(element.value);
      if (object is ReportLinksEquipment) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportLinksEquipment-objects as value to a dart map
  static Map<String, List<ReportLinksEquipment>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportLinksEquipment>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportLinksEquipment>>(
          key, ReportLinksEquipment.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReportLinksEquipment[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && href != null) || (keys?.contains(r'href') ?? false))
        r'href': href,
      if ((keys == null && iriTemplate != null) ||
          (keys?.contains(r'iriTemplate') ?? false))
        r'iriTemplate': iriTemplate?.toJson(),
    };
  }
}
