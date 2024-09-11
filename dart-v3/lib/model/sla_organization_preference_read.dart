//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class SlaOrganizationPreferenceRead {
  /// Returns a new [SlaOrganizationPreferenceRead] instance.
  SlaOrganizationPreferenceRead({
    this.enabled,
  });

  /// Returns a new [SlaOrganizationPreferenceRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SlaOrganizationPreferenceRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return SlaOrganizationPreferenceRead(
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

    return other is SlaOrganizationPreferenceRead && other.enabled == enabled;
  }

  @override
  int get hashCode => (enabled == null ? 0 : enabled.hashCode);

  static List<SlaOrganizationPreferenceRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <SlaOrganizationPreferenceRead>[];
    }

    return json.fold(<SlaOrganizationPreferenceRead>[],
        (List<SlaOrganizationPreferenceRead> previousValue, element) {
      final SlaOrganizationPreferenceRead? object =
          SlaOrganizationPreferenceRead.fromJson(element);
      if (object is SlaOrganizationPreferenceRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, SlaOrganizationPreferenceRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SlaOrganizationPreferenceRead>{};
    }

    return json.entries.fold(<String, SlaOrganizationPreferenceRead>{},
        (Map<String, SlaOrganizationPreferenceRead> previousValue, element) {
      final SlaOrganizationPreferenceRead? object =
          SlaOrganizationPreferenceRead.fromJson(element.value);
      if (object is SlaOrganizationPreferenceRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of SlaOrganizationPreferenceRead-objects as value to a dart map
  static Map<String, List<SlaOrganizationPreferenceRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<SlaOrganizationPreferenceRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<SlaOrganizationPreferenceRead>>(
          key, SlaOrganizationPreferenceRead.listFromJson(value));
    });
  }

  @override
  String toString() => 'SlaOrganizationPreferenceRead[enabled=$enabled]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'enabled')) r'enabled': enabled,
    };
  }
}
