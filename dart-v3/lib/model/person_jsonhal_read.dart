//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PersonJsonhalRead {
  /// Returns a new [PersonJsonhalRead] instance.
  PersonJsonhalRead({
    this.links,
    this.id,
    this.image,
    this.jobTitle,
    this.optIn,
    this.telephone,
    this.email,
    this.username,
    this.enabled,
    this.familyName,
    this.givenName,
    this.createdAt,
    this.updatedAt,
    this.type,
  });

  /// Returns a new [PersonJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PersonJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PersonJsonhalRead(
      links: AssetTypeJsonhalReadLinks.fromJson(json[r'_links']),
      id: json[r'id'],
      image: json[r'image'],
      jobTitle: json[r'jobTitle'],
      optIn: json[r'optIn'],
      telephone: json[r'telephone'],
      email: json[r'email'],
      username: json[r'username'],
      enabled: json[r'enabled'],
      familyName: json[r'familyName'],
      givenName: json[r'givenName'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
      type: json[r'type'],
    );
  }

  AssetTypeJsonhalReadLinks? links;

  final String? id;

  String? image;

  String? jobTitle;

  bool? optIn;

  String? telephone;

  String? email;

  String? username;

  bool? enabled;

  /// Family name. In the U.S., the last name of a Person.
  String? familyName;

  /// Given name. In the U.S., the first name of a Person.
  String? givenName;

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

    return other is PersonJsonhalRead &&
        other.links == links &&
        other.id == id &&
        other.image == image &&
        other.jobTitle == jobTitle &&
        other.optIn == optIn &&
        other.telephone == telephone &&
        other.email == email &&
        other.username == username &&
        other.enabled == enabled &&
        other.familyName == familyName &&
        other.givenName == givenName &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (image == null ? 0 : image.hashCode) +
      (jobTitle == null ? 0 : jobTitle.hashCode) +
      (optIn == null ? 0 : optIn.hashCode) +
      (telephone == null ? 0 : telephone.hashCode) +
      (email == null ? 0 : email.hashCode) +
      (username == null ? 0 : username.hashCode) +
      (enabled == null ? 0 : enabled.hashCode) +
      (familyName == null ? 0 : familyName.hashCode) +
      (givenName == null ? 0 : givenName.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<PersonJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <PersonJsonhalRead>[];
    }

    return json.fold(<PersonJsonhalRead>[],
        (List<PersonJsonhalRead> previousValue, element) {
      final PersonJsonhalRead? object = PersonJsonhalRead.fromJson(element);
      if (object is PersonJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PersonJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PersonJsonhalRead>{};
    }

    return json.entries.fold(<String, PersonJsonhalRead>{},
        (Map<String, PersonJsonhalRead> previousValue, element) {
      final PersonJsonhalRead? object =
          PersonJsonhalRead.fromJson(element.value);
      if (object is PersonJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PersonJsonhalRead-objects as value to a dart map
  static Map<String, List<PersonJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PersonJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PersonJsonhalRead>>(
          key, PersonJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PersonJsonhalRead[links=$links, id=$id, image=$image, jobTitle=$jobTitle, optIn=$optIn, telephone=$telephone, email=$email, username=$username, enabled=$enabled, familyName=$familyName, givenName=$givenName, createdAt=$createdAt, updatedAt=$updatedAt, type=$type]';

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
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'image')) r'image': image,
      if (keys == null || keys.contains(r'jobTitle')) r'jobTitle': jobTitle,
      if (keys == null || keys.contains(r'optIn')) r'optIn': optIn,
      if (keys == null || keys.contains(r'telephone')) r'telephone': telephone,
      if (keys == null || keys.contains(r'email')) r'email': email,
      if (keys == null || keys.contains(r'username')) r'username': username,
      if (keys == null || keys.contains(r'enabled')) r'enabled': enabled,
      if (keys == null || keys.contains(r'familyName'))
        r'familyName': familyName,
      if (keys == null || keys.contains(r'givenName')) r'givenName': givenName,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'type')) r'type': type,
    };
  }
}
