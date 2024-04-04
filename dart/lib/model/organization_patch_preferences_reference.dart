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
  static OrganizationPatchPreferencesReference? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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

    return json.fold(<OrganizationPatchPreferencesReference>[],
        (List<OrganizationPatchPreferencesReference> previousValue, element) {
      final OrganizationPatchPreferencesReference? object =
          OrganizationPatchPreferencesReference.fromJson(element);
      if (object is OrganizationPatchPreferencesReference) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OrganizationPatchPreferencesReference> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OrganizationPatchPreferencesReference>{};
    }

    return json.entries.fold(<String, OrganizationPatchPreferencesReference>{},
        (Map<String, OrganizationPatchPreferencesReference> previousValue,
            element) {
      final OrganizationPatchPreferencesReference? object =
          OrganizationPatchPreferencesReference.fromJson(element.value);
      if (object is OrganizationPatchPreferencesReference) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OrganizationPatchPreferencesReference-objects as value to a dart map
  static Map<String, List<OrganizationPatchPreferencesReference>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OrganizationPatchPreferencesReference>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OrganizationPatchPreferencesReference>>(
          key, OrganizationPatchPreferencesReference.listFromJson(value));
    });
  }

  @override
  String toString() => 'OrganizationPatchPreferencesReference[prefix=$prefix]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'prefix')) r'prefix': prefix,
    };
  }
}
