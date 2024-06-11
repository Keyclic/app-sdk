//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Service {
  /// Returns a new [Service] instance.
  Service({
    this.address,
    this.contactPoint,
    this.createdAt,
    this.description,
    this.id,
    required this.name,
    this.onCall,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [Service] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Service? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return Service(
      address: ServicePostalAddress.fromJson(json[r'address']),
      contactPoint: ServiceContactPoint.fromJson(json[r'contactPoint']),
      createdAt: mapToDateTime(json[r'createdAt']),
      description: json[r'description'],
      id: json[r'id'],
      name: json[r'name'],
      onCall: ServiceContactPoint.fromJson(json[r'onCall']),
      type: json[r'type'],
      updatedAt: mapToDateTime(json[r'updatedAt']),
    );
  }

  ServicePostalAddress? address;

  ServiceContactPoint? contactPoint;

  final DateTime? createdAt;

  String? description;

  final String? id;

  String name;

  ServiceContactPoint? onCall;

  String? type;

  final DateTime? updatedAt;

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
      name.hashCode +
      (onCall == null ? 0 : onCall.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<Service> listFromJson(Iterable? json) {
    if (json == null) {
      return <Service>[];
    }

    return json.fold(<Service>[], (List<Service> previousValue, element) {
      final Service? object = Service.fromJson(element);
      if (object is Service) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Service> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Service>{};
    }

    return json.entries.fold(<String, Service>{},
        (Map<String, Service> previousValue, element) {
      final Service? object = Service.fromJson(element.value);
      if (object is Service) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Service-objects as value to a dart map
  static Map<String, List<Service>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Service>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Service>>(key, Service.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Service[address=$address, contactPoint=$contactPoint, createdAt=$createdAt, description=$description, id=$id, name=$name, onCall=$onCall, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^address\.').hasMatch(key)))
        r'address': address?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^address\.'))) {
            previousValue.add(element.split(RegExp(r'^address\.')).last);
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
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      if (keys == null || keys.contains(r'id')) r'id': id,
      r'name': name,
      if (keys == null || keys.any((key) => RegExp(r'^onCall\.').hasMatch(key)))
        r'onCall': onCall?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^onCall\.'))) {
            previousValue.add(element.split(RegExp(r'^onCall\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'type')) r'type': type,
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}
