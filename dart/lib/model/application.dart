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
    this.contactPoints,
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

    return Application(
      links: json[r'_links'] is! Map
          ? null
          : ApplicationLinks.fromJson(json[r'_links']),
      about: json[r'about'] is! Map
          ? null
          : ApplicationAbout.fromJson(json[r'about']),
      agreement: json[r'agreement'] is! Map
          ? null
          : ApplicationAgreement.fromJson(json[r'agreement']),
      configuration: json[r'configuration'] is! Map
          ? null
          : ApplicationConfiguration.fromJson(json[r'configuration']),
      contactPoints: json[r'contactPoints'] is! Iterable
          ? null
          : ApplicationContactPoint.listFromJson(json[r'contactPoints']),
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

  static List<Application> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <Application>[];
    }

    return json.fold(<Application>[],
        (List<Application> previousValue, element) {
      final Application? object = Application.fromJson(element);
      if (object is Application) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Application> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Application>{};
    }

    return json.entries.fold(<String, Application>{},
        (Map<String, Application> previousValue, element) {
      final Application? object = Application.fromJson(element.value);
      if (object is Application) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Application-objects as value to a dart map
  static Map<String, List<Application>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Application>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Application>>(
          key, Application.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Application[links=$links, about=$about, agreement=$agreement, configuration=$configuration, contactPoints=$contactPoints, createdAt=$createdAt, id=$id, name=$name, token=$token, type=$type, updatedAt=$updatedAt, version=$version]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && links != null) ||
          (keys?.contains(r'links') ?? false))
        r'_links': links?.toJson(),
      if ((keys == null && about != null) ||
          (keys?.contains(r'about') ?? false))
        r'about': about?.toJson(),
      if ((keys == null && agreement != null) ||
          (keys?.contains(r'agreement') ?? false))
        r'agreement': agreement?.toJson(),
      if ((keys == null && configuration != null) ||
          (keys?.contains(r'configuration') ?? false))
        r'configuration': configuration?.toJson(),
      if ((keys == null && contactPoints != null) ||
          (keys?.contains(r'contactPoints') ?? false))
        r'contactPoints': contactPoints,
      if ((keys == null && createdAt != null) ||
          (keys?.contains(r'createdAt') ?? false))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if ((keys == null && id != null) || (keys?.contains(r'id') ?? false))
        r'id': id,
      r'name': name,
      r'token': token,
      if ((keys == null && type != null) || (keys?.contains(r'type') ?? false))
        r'type': type,
      if ((keys == null && updatedAt != null) ||
          (keys?.contains(r'updatedAt') ?? false))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
      if ((keys == null && version != null) ||
          (keys?.contains(r'version') ?? false))
        r'version': version,
    };
  }
}
