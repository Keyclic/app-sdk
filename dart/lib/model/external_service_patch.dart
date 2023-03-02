//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ExternalServicePatch {
  /// Returns a new [ExternalServicePatch] instance.
  ExternalServicePatch({
    this.address,
    this.contactPoint,
    this.description,
    this.name,
  });

  /// Returns a new [ExternalServicePatch] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ExternalServicePatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ExternalServicePatch(
      address: ExternalServicePatchAddress.fromJson(json[r'address']),
      contactPoint:
          ExternalServicePatchContactPoint.fromJson(json[r'contactPoint']),
      description: json[r'description'],
      name: json[r'name'],
    );
  }

  ExternalServicePatchAddress address;

  ExternalServicePatchContactPoint contactPoint;

  String description;

  String name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalServicePatch &&
        other.address == address &&
        other.contactPoint == contactPoint &&
        other.description == description &&
        other.name == name;
  }

  @override
  int get hashCode =>
      (address == null ? 0 : address.hashCode) +
      (contactPoint == null ? 0 : contactPoint.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (name == null ? 0 : name.hashCode);

  static List<ExternalServicePatch> listFromJson(List<dynamic> json) {
    return <ExternalServicePatch>[
      if (json is List)
        for (dynamic value in json) ExternalServicePatch.fromJson(value),
    ];
  }

  static Map<String, ExternalServicePatch> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ExternalServicePatch>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ExternalServicePatch.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ExternalServicePatch-objects as value to a dart map
  static Map<String, List<ExternalServicePatch>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ExternalServicePatch>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ExternalServicePatch.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ExternalServicePatch[address=$address, contactPoint=$contactPoint, description=$description, name=$name]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (address != null) r'address': address,
      if (contactPoint != null) r'contactPoint': contactPoint,
      if (description != null) r'description': description,
      if (name != null) r'name': name,
    };
  }
}
