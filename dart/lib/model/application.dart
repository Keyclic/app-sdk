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
    required this.version,
  });

  /// Returns a new [Application] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Application? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return Application(
      links: ApplicationLinks.fromJson(json[r'_links']),
      about: ApplicationAbout.fromJson(json[r'about']),
      agreement: ApplicationAgreement.fromJson(json[r'agreement']),
      configuration: ApplicationConfiguration.fromJson(json[r'configuration']),
      contactPoints:
          ApplicationContactPoint.listFromJson(json[r'contactPoints']),
      createdAt: mapToDateTime(json[r'createdAt']),
      id: json[r'id'],
      name: json[r'name'],
      token: json[r'token'],
      type: json[r'type'],
      updatedAt: mapToDateTime(json[r'updatedAt']),
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

  String version;

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
      version.hashCode;

  static List<Application> listFromJson(Iterable? json) {
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

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^about\.').hasMatch(key)))
        r'about': about?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^about\.'))) {
            previousValue.add(element.split(RegExp(r'^about\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^agreement\.').hasMatch(key)))
        r'agreement': agreement?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^agreement\.'))) {
            previousValue.add(element.split(RegExp(r'^agreement\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^configuration\.').hasMatch(key)))
        r'configuration': configuration?.toJson(keys?.fold<List<String>>(
            <String>[], (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^configuration\.'))) {
            previousValue.add(element.split(RegExp(r'^configuration\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'contactPoints'))
        r'contactPoints': contactPoints,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'id')) r'id': id,
      r'name': name,
      r'token': token,
      if (keys == null || keys.contains(r'type')) r'type': type,
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
      r'version': version,
    };
  }
}
