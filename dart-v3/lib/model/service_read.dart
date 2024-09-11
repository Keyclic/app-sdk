//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ServiceRead {
  /// Returns a new [ServiceRead] instance.
  ServiceRead({
    this.provider,
    this.contactPoint,
    this.description,
    this.manager,
    required this.name,
    this.onCall,
    required this.organization,
    this.id,
    this.address,
    this.createdAt,
    this.updatedAt,
    this.type,
  });

  /// Returns a new [ServiceRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ServiceRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ServiceRead(
      provider: OrganizationRead.fromJson(json[r'provider']),
      contactPoint: ContactPointRead.fromJson(json[r'contactPoint']),
      description: json[r'description'],
      manager: CollaboratorRead.fromJson(json[r'manager']),
      name: json[r'name'],
      onCall: ContactPointRead.fromJson(json[r'onCall']),
      organization: OrganizationRead.fromJson(json[r'organization'])!,
      id: json[r'id'],
      address: PostalAddressRead.fromJson(json[r'address']),
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
      type: json[r'type'],
    );
  }

  OrganizationRead? provider;

  ContactPointRead? contactPoint;

  String? description;

  CollaboratorRead? manager;

  String name;

  ContactPointRead? onCall;

  OrganizationRead organization;

  /// The resource identifier.
  final String? id;

  PostalAddressRead? address;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  final String? type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ServiceRead &&
        other.provider == provider &&
        other.contactPoint == contactPoint &&
        other.description == description &&
        other.manager == manager &&
        other.name == name &&
        other.onCall == onCall &&
        other.organization == organization &&
        other.id == id &&
        other.address == address &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (provider == null ? 0 : provider.hashCode) +
      (contactPoint == null ? 0 : contactPoint.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (manager == null ? 0 : manager.hashCode) +
      name.hashCode +
      (onCall == null ? 0 : onCall.hashCode) +
      organization.hashCode +
      (id == null ? 0 : id.hashCode) +
      (address == null ? 0 : address.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<ServiceRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <ServiceRead>[];
    }

    return json.fold(<ServiceRead>[],
        (List<ServiceRead> previousValue, element) {
      final ServiceRead? object = ServiceRead.fromJson(element);
      if (object is ServiceRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ServiceRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ServiceRead>{};
    }

    return json.entries.fold(<String, ServiceRead>{},
        (Map<String, ServiceRead> previousValue, element) {
      final ServiceRead? object = ServiceRead.fromJson(element.value);
      if (object is ServiceRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ServiceRead-objects as value to a dart map
  static Map<String, List<ServiceRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ServiceRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ServiceRead>>(
          key, ServiceRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ServiceRead[provider=$provider, contactPoint=$contactPoint, description=$description, manager=$manager, name=$name, onCall=$onCall, organization=$organization, id=$id, address=$address, createdAt=$createdAt, updatedAt=$updatedAt, type=$type]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^provider\.').hasMatch(key)))
        r'provider': provider?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^provider\.'))) {
            previousValue.add(element.split(RegExp(r'^provider\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^contactPoint\.').hasMatch(key)))
        r'contactPoint': contactPoint?.toJson(keys?.fold<List<String>>(
            <String>[], (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^contactPoint\.'))) {
            previousValue.add(element.split(RegExp(r'^contactPoint\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      if (keys == null ||
          keys.any((key) => RegExp(r'^manager\.').hasMatch(key)))
        r'manager': manager?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^manager\.'))) {
            previousValue.add(element.split(RegExp(r'^manager\.')).last);
          }

          return previousValue;
        })),
      r'name': name,
      if (keys == null || keys.any((key) => RegExp(r'^onCall\.').hasMatch(key)))
        r'onCall': onCall?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^onCall\.'))) {
            previousValue.add(element.split(RegExp(r'^onCall\.')).last);
          }

          return previousValue;
        })),
      r'organization': organization.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^organization\.'))) {
          previousValue.add(element.split(RegExp(r'^organization\.')).last);
        }

        return previousValue;
      })),
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null ||
          keys.any((key) => RegExp(r'^address\.').hasMatch(key)))
        r'address': address?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^address\.'))) {
            previousValue.add(element.split(RegExp(r'^address\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'type')) r'type': type,
    };
  }
}
