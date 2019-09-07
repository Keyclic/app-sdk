part of keyclic_sdk_api.api;

class ExternalService {
  ExternalService({
    this.links,
    this.contactPoint,
    this.createdAt,
    this.description,
    this.id,
    this.name,
    this.type,
    this.updatedAt,
  });

  ExternalService.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    links = ExternalServiceLinks.fromJson(json['_links']);
    contactPoint = ExternalServiceContactPoint.fromJson(json['contactPoint']);
    createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    description = json['description'];
    id = json['id'];
    name = json['name'];
    type = json['type'];
    updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }
  }

  ExternalServiceLinks links;

  ExternalServiceContactPoint contactPoint;

  DateTime createdAt;

  String description;

  String id;

  String name;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalService &&
        runtimeType == other.runtimeType &&
        links == other.links &&
        contactPoint == other.contactPoint &&
        createdAt == other.createdAt &&
        description == other.description &&
        id == other.id &&
        name == other.name &&
        type == other.type &&
        updatedAt == other.updatedAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      links.hashCode ^
      contactPoint.hashCode ^
      createdAt.hashCode ^
      description.hashCode ^
      id.hashCode ^
      name.hashCode ^
      type.hashCode ^
      updatedAt.hashCode;

  static List<ExternalService> listFromJson(List<dynamic> json) {
    return json == null
        ? <ExternalService>[]
        : json.map((value) => ExternalService.fromJson(value)).toList();
  }

  static Map<String, ExternalService> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExternalService>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ExternalService.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      '_links': links,
      'contactPoint': contactPoint,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'description': description,
      'id': id,
      'name': name,
      'type': type,
      'updatedAt': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'ExternalService[links=$links, contactPoint=$contactPoint, createdAt=$createdAt, description=$description, id=$id, name=$name, type=$type, updatedAt=$updatedAt, ]';
  }
}