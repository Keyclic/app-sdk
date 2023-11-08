//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ExternalService {
  /// Returns a new [ExternalService] instance.
  ExternalService({
    this.embedded,
    this.links,
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

  /// Returns a new [ExternalService] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ExternalService? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
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

    return ExternalService(
      embedded: ExternalServiceEmbedded.fromJson(json[r'_embedded']),
      links: ExternalServiceLinks.fromJson(json[r'_links']),
      address: ExternalServicePostalAddress.fromJson(json[r'address']),
      contactPoint: ExternalServiceContactPoint.fromJson(json[r'contactPoint']),
      createdAt: createdAt,
      description: json[r'description'],
      id: json[r'id'],
      name: json[r'name'],
      onCall: ExternalServiceContactPoint.fromJson(json[r'onCall']),
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  ExternalServiceEmbedded? embedded;

  ExternalServiceLinks? links;

  ExternalServicePostalAddress? address;

  ExternalServiceContactPoint? contactPoint;

  final DateTime? createdAt;

  String? description;

  final String? id;

  String name;

  ExternalServiceContactPoint? onCall;

  String? type;

  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalService &&
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
      name.hashCode +
      (onCall == null ? 0 : onCall.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<ExternalService> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ExternalService>[];
    }

    return json.fold(<ExternalService>[],
        (List<ExternalService> previousValue, element) {
      final ExternalService? object = ExternalService.fromJson(element);
      if (object is ExternalService) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ExternalService> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ExternalService>{};
    }

    return json.entries.fold(<String, ExternalService>{},
        (Map<String, ExternalService> previousValue, element) {
      final ExternalService? object = ExternalService.fromJson(element.value);
      if (object is ExternalService) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ExternalService-objects as value to a dart map
  static Map<String, List<ExternalService>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ExternalService>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ExternalService>>(
          key, ExternalService.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ExternalService[embedded=$embedded, links=$links, address=$address, contactPoint=$contactPoint, createdAt=$createdAt, description=$description, id=$id, name=$name, onCall=$onCall, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && embedded != null) ||
          (keys?.contains(r'embedded') ?? false))
        r'_embedded': embedded?.toJson(),
      if ((keys == null && links != null) ||
          (keys?.contains(r'links') ?? false))
        r'_links': links?.toJson(),
      if ((keys == null && address != null) ||
          (keys?.contains(r'address') ?? false))
        r'address': address?.toJson(),
      if ((keys == null && contactPoint != null) ||
          (keys?.contains(r'contactPoint') ?? false))
        r'contactPoint': contactPoint?.toJson(),
      if ((keys == null && createdAt != null) ||
          (keys?.contains(r'createdAt') ?? false))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if ((keys == null && description != null) ||
          (keys?.contains(r'description') ?? false))
        r'description': description,
      if ((keys == null && id != null) || (keys?.contains(r'id') ?? false))
        r'id': id,
      r'name': name,
      if ((keys == null && onCall != null) ||
          (keys?.contains(r'onCall') ?? false))
        r'onCall': onCall?.toJson(),
      if ((keys == null && type != null) || (keys?.contains(r'type') ?? false))
        r'type': type,
      if ((keys == null && updatedAt != null) ||
          (keys?.contains(r'updatedAt') ?? false))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}
