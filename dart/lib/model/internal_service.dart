//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class InternalService {
  /// Returns a new [InternalService] instance.
  InternalService({
    this.embedded,
    this.links,
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

  /// Returns a new [InternalService] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory InternalService.fromJson(Map<String, dynamic> json) {
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

    return InternalService(
      embedded: InternalServiceEmbedded.fromJson(json[r'_embedded']),
      links: InternalServiceLinks.fromJson(json[r'_links']),
      address: InternalServicePostalAddress.fromJson(json[r'address']),
      contactPoint: InternalServiceContactPoint.fromJson(json[r'contactPoint']),
      createdAt: createdAt,
      description: json[r'description'],
      id: json[r'id'],
      name: json[r'name'],
      onCall: InternalServiceContactPoint.fromJson(json[r'onCall']),
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  InternalServiceEmbedded embedded;

  InternalServiceLinks links;

  InternalServicePostalAddress address;

  InternalServiceContactPoint contactPoint;

  DateTime createdAt;

  String description;

  String id;

  String name;

  InternalServiceContactPoint onCall;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalService &&
        other.embedded == embedded &&
        other.links == links &&
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
      (embedded == null ? 0 : embedded.hashCode) +
      (links == null ? 0 : links.hashCode) +
      (address == null ? 0 : address.hashCode) +
      (contactPoint == null ? 0 : contactPoint.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (onCall == null ? 0 : onCall.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<InternalService> listFromJson(List<dynamic> json) {
    return <InternalService>[
      if (json is List)
        for (dynamic value in json) InternalService.fromJson(value),
    ];
  }

  static Map<String, InternalService> mapFromJson(Map<String, dynamic> json) {
    return <String, InternalService>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: InternalService.fromJson(entry.value),
    };
  }

  // maps a json object with a list of InternalService-objects as value to a dart map
  static Map<String, List<InternalService>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<InternalService>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: InternalService.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'InternalService[embedded=$embedded, links=$links, address=$address, contactPoint=$contactPoint, createdAt=$createdAt, description=$description, id=$id, name=$name, onCall=$onCall, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
      if (links != null) r'_links': links,
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
