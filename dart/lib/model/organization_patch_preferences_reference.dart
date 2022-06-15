//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OrganizationPatchPreferencesReference {
  /// Returns a new [OrganizationPatchPreferencesReference] instance.
  OrganizationPatchPreferencesReference({
    this.prefix,
  });

  /// Returns a new [OrganizationPatchPreferencesReference] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationPatchPreferencesReference? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OrganizationPatchPreferencesReference(
      prefix: json[r'prefix'],
    );
  }

  String? prefix;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationPatchPreferencesReference &&
        other.prefix == prefix;
  }

  @override
  int get hashCode => (prefix == null ? 0 : prefix.hashCode);

  static List<OrganizationPatchPreferencesReference> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <OrganizationPatchPreferencesReference>[];
    }
    return json
        .map((value) {
          return OrganizationPatchPreferencesReference.fromJson(value);
        })
        .whereType<OrganizationPatchPreferencesReference>()
        .toList();
  }

  static Map<String, OrganizationPatchPreferencesReference> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OrganizationPatchPreferencesReference>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, OrganizationPatchPreferencesReference?>(
            key, OrganizationPatchPreferencesReference.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, OrganizationPatchPreferencesReference>;
  }

  // maps a json object with a list of OrganizationPatchPreferencesReference-objects as value to a dart map
  static Map<String, List<OrganizationPatchPreferencesReference>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<OrganizationPatchPreferencesReference>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              OrganizationPatchPreferencesReference.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'OrganizationPatchPreferencesReference[prefix=$prefix]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (prefix != null) r'prefix': prefix,
    };
  }
}
