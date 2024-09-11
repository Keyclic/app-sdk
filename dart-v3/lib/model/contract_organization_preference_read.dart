//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ContractOrganizationPreferenceRead {
  /// Returns a new [ContractOrganizationPreferenceRead] instance.
  ContractOrganizationPreferenceRead({
    this.enabled,
  });

  /// Returns a new [ContractOrganizationPreferenceRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContractOrganizationPreferenceRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ContractOrganizationPreferenceRead(
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

    return other is ContractOrganizationPreferenceRead &&
        other.enabled == enabled;
  }

  @override
  int get hashCode => (enabled == null ? 0 : enabled.hashCode);

  static List<ContractOrganizationPreferenceRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <ContractOrganizationPreferenceRead>[];
    }

    return json.fold(<ContractOrganizationPreferenceRead>[],
        (List<ContractOrganizationPreferenceRead> previousValue, element) {
      final ContractOrganizationPreferenceRead? object =
          ContractOrganizationPreferenceRead.fromJson(element);
      if (object is ContractOrganizationPreferenceRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContractOrganizationPreferenceRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContractOrganizationPreferenceRead>{};
    }

    return json.entries.fold(<String, ContractOrganizationPreferenceRead>{},
        (Map<String, ContractOrganizationPreferenceRead> previousValue,
            element) {
      final ContractOrganizationPreferenceRead? object =
          ContractOrganizationPreferenceRead.fromJson(element.value);
      if (object is ContractOrganizationPreferenceRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContractOrganizationPreferenceRead-objects as value to a dart map
  static Map<String, List<ContractOrganizationPreferenceRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContractOrganizationPreferenceRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContractOrganizationPreferenceRead>>(
          key, ContractOrganizationPreferenceRead.listFromJson(value));
    });
  }

  @override
  String toString() => 'ContractOrganizationPreferenceRead[enabled=$enabled]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'enabled')) r'enabled': enabled,
    };
  }
}
