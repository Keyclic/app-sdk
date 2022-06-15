//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Application {
  /// Returns a new [Application] instance.
  Application({
    this.links,
    this.about,
    this.agreement,
    this.configuration,
    this.contactPoints = const [],
    this.createdAt,
    this.id,
    required this.name,
    required this.token,
    this.type,
    this.updatedAt,
    this.version,
  });

  /// Returns a new [Application] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Application? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? createdAt = json[r'createdAt'] is String
        ? DateTime.parse(json[r'createdAt'])
        : null;
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime? updatedAt = json[r'updatedAt'] is String
        ? DateTime.parse(json[r'updatedAt'])
        : null;
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return Application(
      links: ApplicationLinks.fromJson(json[r'_links']),
      about: ApplicationAbout.fromJson(json[r'about']),
      agreement: ApplicationAgreement.fromJson(json[r'agreement']),
      configuration: ApplicationConfiguration.fromJson(json[r'configuration']),
      contactPoints:
          ApplicationContactPoint.listFromJson(json[r'contactPoints']),
      createdAt: createdAt,
      id: json[r'id'],
      name: json[r'name'],
      token: json[r'token'],
      type: json[r'type'],
      updatedAt: updatedAt,
      version: json[r'version'],
    );
  }

  ApplicationLinks? links;

  ApplicationAbout? about;

  ApplicationAgreement? agreement;

  ApplicationConfiguration? configuration;

  List<ApplicationContactPoint>? contactPoints;

  final DateTime? createdAt;

  final String? id;

  String name;

  String token;

  String? type;

  final DateTime? updatedAt;

  String? version;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Application &&
        other.links == links &&
        other.about == about &&
        other.agreement == agreement &&
        other.configuration == configuration &&
        DeepCollectionEquality.unordered()
            .equals(contactPoints, other.contactPoints) &&
        other.createdAt == createdAt &&
        other.id == id &&
        other.name == name &&
        other.token == token &&
        other.type == type &&
        other.updatedAt == updatedAt &&
        other.version == version;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (about == null ? 0 : about.hashCode) +
      (agreement == null ? 0 : agreement.hashCode) +
      (configuration == null ? 0 : configuration.hashCode) +
      (contactPoints == null ? 0 : contactPoints.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (id == null ? 0 : id.hashCode) +
      name.hashCode +
      token.hashCode +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (version == null ? 0 : version.hashCode);

  static List<Application> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Application>[];
    }
    return json
        .map((value) {
          return Application.fromJson(value);
        })
        .whereType<Application>()
        .toList();
  }

  static Map<String, Application> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Application>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, Application?>(key, Application.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, Application>;
  }

  // maps a json object with a list of Application-objects as value to a dart map
  static Map<String, List<Application>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<Application>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: Application.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'Application[links=$links, about=$about, agreement=$agreement, configuration=$configuration, contactPoints=$contactPoints, createdAt=$createdAt, id=$id, name=$name, token=$token, type=$type, updatedAt=$updatedAt, version=$version]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (links != null) r'_links': links,
      if (about != null) r'about': about,
      if (agreement != null) r'agreement': agreement,
      if (configuration != null) r'configuration': configuration,
      if (contactPoints != null) r'contactPoints': contactPoints,
      if (createdAt != null) r'createdAt': createdAt!.toUtc().toIso8601String(),
      if (id != null) r'id': id,
      r'name': name,
      r'token': token,
      if (type != null) r'type': type,
      if (updatedAt != null) r'updatedAt': updatedAt!.toUtc().toIso8601String(),
      if (version != null) r'version': version,
    };
  }
}
