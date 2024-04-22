//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ServiceOfferRead {
  /// Returns a new [ServiceOfferRead] instance.
  ServiceOfferRead({
    required this.name,
    required this.service,
    this.id,
    this.createdAt,
    this.updatedAt,
  });

  /// Returns a new [ServiceOfferRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ServiceOfferRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    DateTime? createdAt =
        json[r'createdAt'] == null ? null : DateTime.parse(json[r'createdAt']);
    if (createdAt != null && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime? updatedAt =
        json[r'updatedAt'] == null ? null : DateTime.parse(json[r'updatedAt']);
    if (updatedAt != null && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return ServiceOfferRead(
      name: json[r'name'],
      service: json[r'service'],
      id: json[r'id'],
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  String name;

  String service;

  /// The resource identifier.
  final String? id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ServiceOfferRead &&
        other.name == name &&
        other.service == service &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      name.hashCode +
      service.hashCode +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<ServiceOfferRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ServiceOfferRead>[];
    }

    return json.fold(<ServiceOfferRead>[],
        (List<ServiceOfferRead> previousValue, element) {
      final ServiceOfferRead? object = ServiceOfferRead.fromJson(element);
      if (object is ServiceOfferRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ServiceOfferRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ServiceOfferRead>{};
    }

    return json.entries.fold(<String, ServiceOfferRead>{},
        (Map<String, ServiceOfferRead> previousValue, element) {
      final ServiceOfferRead? object = ServiceOfferRead.fromJson(element.value);
      if (object is ServiceOfferRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ServiceOfferRead-objects as value to a dart map
  static Map<String, List<ServiceOfferRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ServiceOfferRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ServiceOfferRead>>(
          key, ServiceOfferRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ServiceOfferRead[name=$name, service=$service, id=$id, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'name': name,
      r'service': service,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}
