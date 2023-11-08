//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class InternalServiceData {
  /// Returns a new [InternalServiceData] instance.
  InternalServiceData({
    this.address,
    this.contactPoint,
    this.description,
    this.manager,
    required this.name,
    required this.organization,
  });

  /// Returns a new [InternalServiceData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InternalServiceData? fromJson(Map<String, dynamic>? json) {
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

  InternalServiceDataAddress? address;

  InternalServiceDataContactPoint? contactPoint;

  String? description;

  String? manager;

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
      name.hashCode +
      organization.hashCode;

  static List<InternalServiceData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <InternalServiceData>[];
    }

    return json.fold(<InternalServiceData>[],
        (List<InternalServiceData> previousValue, element) {
      final InternalServiceData? object = InternalServiceData.fromJson(element);
      if (object is InternalServiceData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, InternalServiceData> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, InternalServiceData>{};
    }

    return json.entries.fold(<String, InternalServiceData>{},
        (Map<String, InternalServiceData> previousValue, element) {
      final InternalServiceData? object =
          InternalServiceData.fromJson(element.value);
      if (object is InternalServiceData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of InternalServiceData-objects as value to a dart map
  static Map<String, List<InternalServiceData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<InternalServiceData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<InternalServiceData>>(
          key, InternalServiceData.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'InternalServiceData[address=$address, contactPoint=$contactPoint, description=$description, manager=$manager, name=$name, organization=$organization]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && address != null) ||
          (keys?.contains(r'address') ?? false))
        r'address': address?.toJson(),
      if ((keys == null && contactPoint != null) ||
          (keys?.contains(r'contactPoint') ?? false))
        r'contactPoint': contactPoint?.toJson(),
      if ((keys == null && description != null) ||
          (keys?.contains(r'description') ?? false))
        r'description': description,
      if ((keys == null && manager != null) ||
          (keys?.contains(r'manager') ?? false))
        r'manager': manager,
      r'name': name,
      r'organization': organization,
    };
  }
}
