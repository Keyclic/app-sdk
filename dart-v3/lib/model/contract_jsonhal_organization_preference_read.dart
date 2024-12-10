//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ContractJsonhalOrganizationPreferenceRead {
  /// Returns a new [ContractJsonhalOrganizationPreferenceRead] instance.
  ContractJsonhalOrganizationPreferenceRead({
    this.enabled,
  });

  /// Returns a new [ContractJsonhalOrganizationPreferenceRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContractJsonhalOrganizationPreferenceRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ContractJsonhalOrganizationPreferenceRead(
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

    return other is ContractJsonhalOrganizationPreferenceRead &&
        other.enabled == enabled;
  }

  @override
  int get hashCode => (enabled == null ? 0 : enabled.hashCode);

  static List<ContractJsonhalOrganizationPreferenceRead> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <ContractJsonhalOrganizationPreferenceRead>[];
    }

    return json.fold(<ContractJsonhalOrganizationPreferenceRead>[],
        (List<ContractJsonhalOrganizationPreferenceRead> previousValue,
            element) {
      final ContractJsonhalOrganizationPreferenceRead? object =
          ContractJsonhalOrganizationPreferenceRead.fromJson(element);
      if (object is ContractJsonhalOrganizationPreferenceRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContractJsonhalOrganizationPreferenceRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContractJsonhalOrganizationPreferenceRead>{};
    }

    return json.entries.fold(
        <String, ContractJsonhalOrganizationPreferenceRead>{},
        (Map<String, ContractJsonhalOrganizationPreferenceRead> previousValue,
            element) {
      final ContractJsonhalOrganizationPreferenceRead? object =
          ContractJsonhalOrganizationPreferenceRead.fromJson(element.value);
      if (object is ContractJsonhalOrganizationPreferenceRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContractJsonhalOrganizationPreferenceRead-objects as value to a dart map
  static Map<String, List<ContractJsonhalOrganizationPreferenceRead>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContractJsonhalOrganizationPreferenceRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContractJsonhalOrganizationPreferenceRead>>(
          key, ContractJsonhalOrganizationPreferenceRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ContractJsonhalOrganizationPreferenceRead[enabled=$enabled]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'enabled')) r'enabled': enabled,
    };
  }
}
