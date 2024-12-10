//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class SlaJsonhalOrganizationPreferenceRead {
  /// Returns a new [SlaJsonhalOrganizationPreferenceRead] instance.
  SlaJsonhalOrganizationPreferenceRead({
    this.enabled,
  });

  /// Returns a new [SlaJsonhalOrganizationPreferenceRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SlaJsonhalOrganizationPreferenceRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return SlaJsonhalOrganizationPreferenceRead(
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

    return other is SlaJsonhalOrganizationPreferenceRead &&
        other.enabled == enabled;
  }

  @override
  int get hashCode => (enabled == null ? 0 : enabled.hashCode);

  static List<SlaJsonhalOrganizationPreferenceRead> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <SlaJsonhalOrganizationPreferenceRead>[];
    }

    return json.fold(<SlaJsonhalOrganizationPreferenceRead>[],
        (List<SlaJsonhalOrganizationPreferenceRead> previousValue, element) {
      final SlaJsonhalOrganizationPreferenceRead? object =
          SlaJsonhalOrganizationPreferenceRead.fromJson(element);
      if (object is SlaJsonhalOrganizationPreferenceRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, SlaJsonhalOrganizationPreferenceRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SlaJsonhalOrganizationPreferenceRead>{};
    }

    return json.entries.fold(<String, SlaJsonhalOrganizationPreferenceRead>{},
        (Map<String, SlaJsonhalOrganizationPreferenceRead> previousValue,
            element) {
      final SlaJsonhalOrganizationPreferenceRead? object =
          SlaJsonhalOrganizationPreferenceRead.fromJson(element.value);
      if (object is SlaJsonhalOrganizationPreferenceRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of SlaJsonhalOrganizationPreferenceRead-objects as value to a dart map
  static Map<String, List<SlaJsonhalOrganizationPreferenceRead>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<SlaJsonhalOrganizationPreferenceRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<SlaJsonhalOrganizationPreferenceRead>>(
          key, SlaJsonhalOrganizationPreferenceRead.listFromJson(value));
    });
  }

  @override
  String toString() => 'SlaJsonhalOrganizationPreferenceRead[enabled=$enabled]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'enabled')) r'enabled': enabled,
    };
  }
}
