//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OrganizationPatchPreferences {
  /// Returns a new [OrganizationPatchPreferences] instance.
  OrganizationPatchPreferences({
    this.reference,
  });

  /// Returns a new [OrganizationPatchPreferences] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OrganizationPatchPreferences.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationPatchPreferences(
      reference:
          OrganizationPatchPreferencesReference.fromJson(json[r'reference']),
    );
  }

  OrganizationPatchPreferencesReference reference;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationPatchPreferences &&
        other.reference == reference;
  }

  @override
  int get hashCode => (reference == null ? 0 : reference.hashCode);

  static List<OrganizationPatchPreferences> listFromJson(List<dynamic> json) {
    return <OrganizationPatchPreferences>[
      if (json is List)
        for (dynamic value in json)
          OrganizationPatchPreferences.fromJson(value),
    ];
  }

  static Map<String, OrganizationPatchPreferences> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OrganizationPatchPreferences>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OrganizationPatchPreferences.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OrganizationPatchPreferences-objects as value to a dart map
  static Map<String, List<OrganizationPatchPreferences>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OrganizationPatchPreferences>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OrganizationPatchPreferences.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'OrganizationPatchPreferences[reference=$reference]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (reference != null) r'reference': reference,
    };
  }
}
