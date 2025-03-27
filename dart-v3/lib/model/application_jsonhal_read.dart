//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ApplicationJsonhalRead {
  /// Returns a new [ApplicationJsonhalRead] instance.
  ApplicationJsonhalRead({
    this.links,
    this.about,
    this.agreement,
    this.configuration,
    this.contactPoints,
    required this.name,
    required this.token,
    required this.version,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.type,
  });

  /// Returns a new [ApplicationJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ApplicationJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ApplicationJsonhalRead(
      links: ApplicationJsonhalReadLinks.fromJson(json[r'_links']),
      about: AboutJsonhalRead.fromJson(json[r'about']),
      agreement: AgreementJsonhalRead.fromJson(json[r'agreement']),
      configuration: ConfigurationJsonhalRead.fromJson(json[r'configuration']),
      contactPoints: ContactPointJsonhalApplicationRead.listFromJson(
          json[r'contactPoints']),
      name: json[r'name'],
      token: json[r'token'],
      version: json[r'version'],
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
      type: json[r'type'],
    );
  }

  ApplicationJsonhalReadLinks? links;

  AboutJsonhalRead? about;

  AgreementJsonhalRead? agreement;

  ConfigurationJsonhalRead? configuration;

  List<ContactPointJsonhalApplicationRead>? contactPoints;

  String name;

  /// The token of the Application, which is used in request application header, to define the context of the current application.
  String token;

  String version;

  /// The resource identifier.
  final String? id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  final String? type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ApplicationJsonhalRead &&
        other.links == links &&
        other.about == about &&
        other.agreement == agreement &&
        other.configuration == configuration &&
        DeepCollectionEquality.unordered()
            .equals(contactPoints, other.contactPoints) &&
        other.name == name &&
        other.token == token &&
        other.version == version &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (about == null ? 0 : about.hashCode) +
      (agreement == null ? 0 : agreement.hashCode) +
      (configuration == null ? 0 : configuration.hashCode) +
      (contactPoints == null ? 0 : contactPoints.hashCode) +
      name.hashCode +
      token.hashCode +
      version.hashCode +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<ApplicationJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <ApplicationJsonhalRead>[];
    }

    return json.fold(<ApplicationJsonhalRead>[],
        (List<ApplicationJsonhalRead> previousValue, element) {
      final ApplicationJsonhalRead? object =
          ApplicationJsonhalRead.fromJson(element);
      if (object is ApplicationJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ApplicationJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ApplicationJsonhalRead>{};
    }

    return json.entries.fold(<String, ApplicationJsonhalRead>{},
        (Map<String, ApplicationJsonhalRead> previousValue, element) {
      final ApplicationJsonhalRead? object =
          ApplicationJsonhalRead.fromJson(element.value);
      if (object is ApplicationJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ApplicationJsonhalRead-objects as value to a dart map
  static Map<String, List<ApplicationJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ApplicationJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ApplicationJsonhalRead>>(
          key, ApplicationJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ApplicationJsonhalRead[links=$links, about=$about, agreement=$agreement, configuration=$configuration, contactPoints=$contactPoints, name=$name, token=$token, version=$version, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, type=$type]';

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
      r'name': name,
      r'token': token,
      r'version': version,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'type')) r'type': type,
    };
  }
}
