//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class EquipmentJsonhalOrganizationPreferenceRead {
  /// Returns a new [EquipmentJsonhalOrganizationPreferenceRead] instance.
  EquipmentJsonhalOrganizationPreferenceRead({
    this.enabled,
  });

  /// Returns a new [EquipmentJsonhalOrganizationPreferenceRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EquipmentJsonhalOrganizationPreferenceRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return EquipmentJsonhalOrganizationPreferenceRead(
      enabled: json[r'enabled'],
    );
  }

  bool? enabled;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is EquipmentJsonhalOrganizationPreferenceRead &&
        other.enabled == enabled;
  }

  @override
  int get hashCode => (enabled == null ? 0 : enabled.hashCode);

  static List<EquipmentJsonhalOrganizationPreferenceRead> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <EquipmentJsonhalOrganizationPreferenceRead>[];
    }

    return json.fold(<EquipmentJsonhalOrganizationPreferenceRead>[],
        (List<EquipmentJsonhalOrganizationPreferenceRead> previousValue,
            element) {
      final EquipmentJsonhalOrganizationPreferenceRead? object =
          EquipmentJsonhalOrganizationPreferenceRead.fromJson(element);
      if (object is EquipmentJsonhalOrganizationPreferenceRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, EquipmentJsonhalOrganizationPreferenceRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, EquipmentJsonhalOrganizationPreferenceRead>{};
    }

    return json.entries.fold(
        <String, EquipmentJsonhalOrganizationPreferenceRead>{},
        (Map<String, EquipmentJsonhalOrganizationPreferenceRead> previousValue,
            element) {
      final EquipmentJsonhalOrganizationPreferenceRead? object =
          EquipmentJsonhalOrganizationPreferenceRead.fromJson(element.value);
      if (object is EquipmentJsonhalOrganizationPreferenceRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of EquipmentJsonhalOrganizationPreferenceRead-objects as value to a dart map
  static Map<String, List<EquipmentJsonhalOrganizationPreferenceRead>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<EquipmentJsonhalOrganizationPreferenceRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<EquipmentJsonhalOrganizationPreferenceRead>>(
          key, EquipmentJsonhalOrganizationPreferenceRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'EquipmentJsonhalOrganizationPreferenceRead[enabled=$enabled]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'enabled')) r'enabled': enabled,
    };
  }
}
