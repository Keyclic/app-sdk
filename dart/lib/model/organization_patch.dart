//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OrganizationPatch {
  /// Returns a new [OrganizationPatch] instance.
  OrganizationPatch({
    this.address,
    this.alternateName,
    this.description,
    this.logo,
    this.name,
    this.preferences,
  });

  /// Returns a new [OrganizationPatch] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationPatch? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OrganizationPatch(
      address: ExternalServicePatchAddress.fromJson(json[r'address']),
      alternateName: json[r'alternateName'],
      description: json[r'description'],
      logo: json[r'logo'],
      name: json[r'name'],
      preferences: OrganizationPatchPreferences.fromJson(json[r'preferences']),
    );
  }

  ExternalServicePatchAddress? address;

  String? alternateName;

  String? description;

  String? logo;

  String? name;

  OrganizationPatchPreferences? preferences;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationPatch &&
        other.address == address &&
        other.alternateName == alternateName &&
        other.description == description &&
        other.logo == logo &&
        other.name == name &&
        other.preferences == preferences;
  }

  @override
  int get hashCode =>
      (address == null ? 0 : address.hashCode) +
      (alternateName == null ? 0 : alternateName.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (logo == null ? 0 : logo.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (preferences == null ? 0 : preferences.hashCode);

  static List<OrganizationPatch> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OrganizationPatch>[];
    }
    return json
        .map((value) {
          return OrganizationPatch.fromJson(value);
        })
        .whereType<OrganizationPatch>()
        .toList();
  }

  static Map<String, OrganizationPatch> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OrganizationPatch>{};
    }

    final map = json.map((key, value) => MapEntry<String, OrganizationPatch?>(
        key, OrganizationPatch.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, OrganizationPatch>;
  }

  // maps a json object with a list of OrganizationPatch-objects as value to a dart map
  static Map<String, List<OrganizationPatch>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<OrganizationPatch>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: OrganizationPatch.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'OrganizationPatch[address=$address, alternateName=$alternateName, description=$description, logo=$logo, name=$name, preferences=$preferences]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (address != null) r'address': address,
      if (alternateName != null) r'alternateName': alternateName,
      if (description != null) r'description': description,
      if (logo != null) r'logo': logo,
      if (name != null) r'name': name,
      if (preferences != null) r'preferences': preferences,
    };
  }
}
