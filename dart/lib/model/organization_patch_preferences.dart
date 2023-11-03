//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OrganizationPatchPreferences {
  /// Returns a new [OrganizationPatchPreferences] instance.
  OrganizationPatchPreferences({
    this.reference,
  });

  /// Returns a new [OrganizationPatchPreferences] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationPatchPreferences? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OrganizationPatchPreferences(
      reference:
          OrganizationPatchPreferencesReference.fromJson(json[r'reference']),
    );
  }

  OrganizationPatchPreferencesReference? reference;

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

  static List<OrganizationPatchPreferences> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OrganizationPatchPreferences>[];
    }

    return json.fold(<OrganizationPatchPreferences>[],
        (List<OrganizationPatchPreferences> previousValue, element) {
      final OrganizationPatchPreferences? object =
          OrganizationPatchPreferences.fromJson(element);
      if (object is OrganizationPatchPreferences) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OrganizationPatchPreferences> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OrganizationPatchPreferences>{};
    }

    return json.entries.fold(<String, OrganizationPatchPreferences>{},
        (Map<String, OrganizationPatchPreferences> previousValue, element) {
      final OrganizationPatchPreferences? object =
          OrganizationPatchPreferences.fromJson(element.value);
      if (object is OrganizationPatchPreferences) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OrganizationPatchPreferences-objects as value to a dart map
  static Map<String, List<OrganizationPatchPreferences>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OrganizationPatchPreferences>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OrganizationPatchPreferences>>(
          key, OrganizationPatchPreferences.listFromJson(value));
    });
  }

  @override
  String toString() => 'OrganizationPatchPreferences[reference=$reference]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && reference != null) ||
          (keys?.contains(r'reference') ?? false))
        r'reference': reference?.toJson(),
    };
  }
}
