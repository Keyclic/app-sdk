//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ArchivingOrganizationPreferenceRead {
  /// Returns a new [ArchivingOrganizationPreferenceRead] instance.
  ArchivingOrganizationPreferenceRead({
    this.enabled,
  });

  /// Returns a new [ArchivingOrganizationPreferenceRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ArchivingOrganizationPreferenceRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ArchivingOrganizationPreferenceRead(
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

    return other is ArchivingOrganizationPreferenceRead &&
        other.enabled == enabled;
  }

  @override
  int get hashCode => (enabled == null ? 0 : enabled.hashCode);

  static List<ArchivingOrganizationPreferenceRead> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <ArchivingOrganizationPreferenceRead>[];
    }

    return json.fold(<ArchivingOrganizationPreferenceRead>[],
        (List<ArchivingOrganizationPreferenceRead> previousValue, element) {
      final ArchivingOrganizationPreferenceRead? object =
          ArchivingOrganizationPreferenceRead.fromJson(element);
      if (object is ArchivingOrganizationPreferenceRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ArchivingOrganizationPreferenceRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ArchivingOrganizationPreferenceRead>{};
    }

    return json.entries.fold(<String, ArchivingOrganizationPreferenceRead>{},
        (Map<String, ArchivingOrganizationPreferenceRead> previousValue,
            element) {
      final ArchivingOrganizationPreferenceRead? object =
          ArchivingOrganizationPreferenceRead.fromJson(element.value);
      if (object is ArchivingOrganizationPreferenceRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ArchivingOrganizationPreferenceRead-objects as value to a dart map
  static Map<String, List<ArchivingOrganizationPreferenceRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ArchivingOrganizationPreferenceRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ArchivingOrganizationPreferenceRead>>(
          key, ArchivingOrganizationPreferenceRead.listFromJson(value));
    });
  }

  @override
  String toString() => 'ArchivingOrganizationPreferenceRead[enabled=$enabled]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'enabled')) r'enabled': enabled,
    };
  }
}
