//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class Service {
  /// Returns a new [Service] instance.
  Service({
    this.address,
    this.contactPoint,
    this.createdAt,
    this.description,
    this.id,
    @required this.name,
    this.onCall,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [Service] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory Service.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json[r'createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json[r'updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return Service(
      address: ServicePostalAddress.fromJson(json[r'address']),
      contactPoint: ServiceContactPoint.fromJson(json[r'contactPoint']),
      createdAt: createdAt,
      description: json[r'description'],
      id: json[r'id'],
      name: json[r'name'],
      onCall: ServiceContactPoint.fromJson(json[r'onCall']),
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  ServicePostalAddress address;

  ServiceContactPoint contactPoint;

  DateTime createdAt;

  String description;

  String id;

  String name;

  ServiceContactPoint onCall;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Service &&
        other.address == address &&
        other.contactPoint == contactPoint &&
        other.createdAt == createdAt &&
        other.description == description &&
        other.id == id &&
        other.name == name &&
        other.onCall == onCall &&
        other.type == type &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (address == null ? 0 : address.hashCode) +
      (contactPoint == null ? 0 : contactPoint.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (onCall == null ? 0 : onCall.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<Service> listFromJson(List<dynamic> json) {
    return <Service>[
      if (json is List)
        for (dynamic value in json) Service.fromJson(value),
    ];
  }

  static Map<String, Service> mapFromJson(Map<String, dynamic> json) {
    return <String, Service>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Service.fromJson(entry.value),
    };
  }

  // maps a json object with a list of Service-objects as value to a dart map
  static Map<String, List<Service>> mapListFromJson(Map<String, dynamic> json) {
    return <String, List<Service>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Service.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'Service[address=$address, contactPoint=$contactPoint, createdAt=$createdAt, description=$description, id=$id, name=$name, onCall=$onCall, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (address != null) r'address': address,
      if (contactPoint != null) r'contactPoint': contactPoint,
      if (createdAt != null) r'createdAt': createdAt.toUtc().toIso8601String(),
      if (description != null) r'description': description,
      if (id != null) r'id': id,
      r'name': name,
      if (onCall != null) r'onCall': onCall,
      if (type != null) r'type': type,
      if (updatedAt != null) r'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }
}
