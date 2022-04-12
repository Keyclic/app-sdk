//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class InternalServiceData {
  /// Returns a new [InternalServiceData] instance.
  InternalServiceData({
    this.address,
    this.contactPoint,
    this.description,
    this.manager,
    @required this.name,
    @required this.organization,
  });

  /// Returns a new [InternalServiceData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory InternalServiceData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InternalServiceData(
      address: InternalServiceDataAddress.fromJson(json[r'address']),
      contactPoint:
          InternalServiceDataContactPoint.fromJson(json[r'contactPoint']),
      description: json[r'description'],
      manager: json[r'manager'],
      name: json[r'name'],
      organization: json[r'organization'],
    );
  }

  InternalServiceDataAddress address;

  InternalServiceDataContactPoint contactPoint;

  String description;

  String manager;

  String name;

  String organization;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServiceData &&
        other.address == address &&
        other.contactPoint == contactPoint &&
        other.description == description &&
        other.manager == manager &&
        other.name == name &&
        other.organization == organization;
  }

  @override
  int get hashCode =>
      (address == null ? 0 : address.hashCode) +
      (contactPoint == null ? 0 : contactPoint.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (manager == null ? 0 : manager.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (organization == null ? 0 : organization.hashCode);

  static List<InternalServiceData> listFromJson(List<dynamic> json) {
    return <InternalServiceData>[
      if (json is List)
        for (dynamic value in json) InternalServiceData.fromJson(value),
    ];
  }

  static Map<String, InternalServiceData> mapFromJson(
      Map<String, dynamic> json) {
    return <String, InternalServiceData>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: InternalServiceData.fromJson(entry.value),
    };
  }

  // maps a json object with a list of InternalServiceData-objects as value to a dart map
  static Map<String, List<InternalServiceData>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<InternalServiceData>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: InternalServiceData.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'InternalServiceData[address=$address, contactPoint=$contactPoint, description=$description, manager=$manager, name=$name, organization=$organization]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (address != null) r'address': address,
      if (contactPoint != null) r'contactPoint': contactPoint,
      if (description != null) r'description': description,
      if (manager != null) r'manager': manager,
      r'name': name,
      r'organization': organization,
    };
  }
}
