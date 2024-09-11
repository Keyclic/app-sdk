//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class EquipmentOrganizationPreferenceRead {
  /// Returns a new [EquipmentOrganizationPreferenceRead] instance.
  EquipmentOrganizationPreferenceRead({
    this.enabled,
  });

  /// Returns a new [EquipmentOrganizationPreferenceRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EquipmentOrganizationPreferenceRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return EquipmentOrganizationPreferenceRead(
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

    return other is EquipmentOrganizationPreferenceRead &&
        other.enabled == enabled;
  }

  @override
  int get hashCode => (enabled == null ? 0 : enabled.hashCode);

  static List<EquipmentOrganizationPreferenceRead> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <EquipmentOrganizationPreferenceRead>[];
    }

    return json.fold(<EquipmentOrganizationPreferenceRead>[],
        (List<EquipmentOrganizationPreferenceRead> previousValue, element) {
      final EquipmentOrganizationPreferenceRead? object =
          EquipmentOrganizationPreferenceRead.fromJson(element);
      if (object is EquipmentOrganizationPreferenceRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, EquipmentOrganizationPreferenceRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, EquipmentOrganizationPreferenceRead>{};
    }

    return json.entries.fold(<String, EquipmentOrganizationPreferenceRead>{},
        (Map<String, EquipmentOrganizationPreferenceRead> previousValue,
            element) {
      final EquipmentOrganizationPreferenceRead? object =
          EquipmentOrganizationPreferenceRead.fromJson(element.value);
      if (object is EquipmentOrganizationPreferenceRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of EquipmentOrganizationPreferenceRead-objects as value to a dart map
  static Map<String, List<EquipmentOrganizationPreferenceRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<EquipmentOrganizationPreferenceRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<EquipmentOrganizationPreferenceRead>>(
          key, EquipmentOrganizationPreferenceRead.listFromJson(value));
    });
  }

  @override
  String toString() => 'EquipmentOrganizationPreferenceRead[enabled=$enabled]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'enabled')) r'enabled': enabled,
    };
  }
}
