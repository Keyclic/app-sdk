//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ServiceJsonhalRead {
  /// Returns a new [ServiceJsonhalRead] instance.
  ServiceJsonhalRead({
    required this.links,
    required this.contactPoint,
    this.description,
    required this.name,
    required this.onCall,
    required this.id,
    this.address,
    required this.createdAt,
    required this.updatedAt,
    this.type,
    required this.embedded,
  });

  /// Returns a new [ServiceJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ServiceJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ServiceJsonhalRead(
      links: AssetTypeJsonhalReadLinks.fromJson(json[r'_links'])!,
      contactPoint: ContactPointJsonhalRead.fromJson(json[r'contactPoint'])!,
      description: json[r'description'],
      name: json[r'name'],
      onCall: ContactPointJsonhalRead.fromJson(json[r'onCall'])!,
      id: json[r'id'],
      address: PostalAddressJsonhalRead.fromJson(json[r'address']),
      createdAt: mapToDateTime(json[r'createdAt'])!,
      updatedAt: mapToDateTime(json[r'updatedAt'])!,
      type: json[r'type'],
      embedded: ServiceJsonhalReadEmbedded.fromJson(json[r'_embedded'])!,
    );
  }

  AssetTypeJsonhalReadLinks links;

  ContactPointJsonhalRead contactPoint;

  String? description;

  String name;

  ContactPointJsonhalRead onCall;

  /// The resource identifier.
  final String id;

  PostalAddressJsonhalRead? address;

  /// The date and time when the resource was created, in UTC format.
  final DateTime createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime updatedAt;

  final String? type;

  ServiceJsonhalReadEmbedded embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ServiceJsonhalRead &&
        other.links == links &&
        other.contactPoint == contactPoint &&
        other.description == description &&
        other.name == name &&
        other.onCall == onCall &&
        other.id == id &&
        other.address == address &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.type == type &&
        other.embedded == embedded;
  }

  @override
  int get hashCode =>
      links.hashCode +
      contactPoint.hashCode +
      (description == null ? 0 : description.hashCode) +
      name.hashCode +
      onCall.hashCode +
      id.hashCode +
      (address == null ? 0 : address.hashCode) +
      createdAt.hashCode +
      updatedAt.hashCode +
      (type == null ? 0 : type.hashCode) +
      embedded.hashCode;

  static List<ServiceJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <ServiceJsonhalRead>[];
    }

    return json.fold(<ServiceJsonhalRead>[],
        (List<ServiceJsonhalRead> previousValue, element) {
      final ServiceJsonhalRead? object = ServiceJsonhalRead.fromJson(element);
      if (object is ServiceJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ServiceJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ServiceJsonhalRead>{};
    }

    return json.entries.fold(<String, ServiceJsonhalRead>{},
        (Map<String, ServiceJsonhalRead> previousValue, element) {
      final ServiceJsonhalRead? object =
          ServiceJsonhalRead.fromJson(element.value);
      if (object is ServiceJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ServiceJsonhalRead-objects as value to a dart map
  static Map<String, List<ServiceJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ServiceJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ServiceJsonhalRead>>(
          key, ServiceJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ServiceJsonhalRead[links=$links, contactPoint=$contactPoint, description=$description, name=$name, onCall=$onCall, id=$id, address=$address, createdAt=$createdAt, updatedAt=$updatedAt, type=$type, embedded=$embedded]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'_links': links.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^links\.'))) {
          previousValue.add(element.split(RegExp(r'^links\.')).last);
        }

        return previousValue;
      })),
      r'contactPoint': contactPoint.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^contactPoint\.'))) {
          previousValue.add(element.split(RegExp(r'^contactPoint\.')).last);
        }

        return previousValue;
      })),
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      r'name': name,
      r'onCall': onCall.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^onCall\.'))) {
          previousValue.add(element.split(RegExp(r'^onCall\.')).last);
        }

        return previousValue;
      })),
      r'id': id,
      if (keys == null ||
          keys.any((key) => RegExp(r'^address\.').hasMatch(key)))
        r'address': address?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^address\.'))) {
            previousValue.add(element.split(RegExp(r'^address\.')).last);
          }

          return previousValue;
        })),
      r'createdAt': createdAt.toUtc().toIso8601String(),
      r'updatedAt': updatedAt.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'type')) r'type': type,
      r'_embedded': embedded.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^embedded\.'))) {
          previousValue.add(element.split(RegExp(r'^embedded\.')).last);
        }

        return previousValue;
      })),
    };
  }
}
