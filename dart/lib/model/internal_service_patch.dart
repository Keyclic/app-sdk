//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class InternalServicePatch {
  /// Returns a new [InternalServicePatch] instance.
  InternalServicePatch({
    this.address,
    this.contactPoint,
    this.description,
    this.manager,
    this.name,
  });

  /// Returns a new [InternalServicePatch] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory InternalServicePatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InternalServicePatch(
      address: ExternalServicePatchAddress.fromJson(json[r'address']),
      contactPoint:
          ExternalServicePatchContactPoint.fromJson(json[r'contactPoint']),
      description: json[r'description'],
      manager: json[r'manager'],
      name: json[r'name'],
    );
  }

  ExternalServicePatchAddress address;

  ExternalServicePatchContactPoint contactPoint;

  String description;

  String manager;

  String name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServicePatch &&
        other.address == address &&
        other.contactPoint == contactPoint &&
        other.description == description &&
        other.manager == manager &&
        other.name == name;
  }

  @override
  int get hashCode =>
      (address == null ? 0 : address.hashCode) +
      (contactPoint == null ? 0 : contactPoint.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (manager == null ? 0 : manager.hashCode) +
      (name == null ? 0 : name.hashCode);

  static List<InternalServicePatch> listFromJson(List<dynamic> json) {
    return <InternalServicePatch>[
      if (json is List)
        for (dynamic value in json) InternalServicePatch.fromJson(value),
    ];
  }

  static Map<String, InternalServicePatch> mapFromJson(
      Map<String, dynamic> json) {
    return <String, InternalServicePatch>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: InternalServicePatch.fromJson(entry.value),
    };
  }

  // maps a json object with a list of InternalServicePatch-objects as value to a dart map
  static Map<String, List<InternalServicePatch>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<InternalServicePatch>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: InternalServicePatch.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'InternalServicePatch[address=$address, contactPoint=$contactPoint, description=$description, manager=$manager, name=$name]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (address != null) r'address': address,
      if (contactPoint != null) r'contactPoint': contactPoint,
      if (description != null) r'description': description,
      if (manager != null) r'manager': manager,
      if (name != null) r'name': name,
    };
  }
}
