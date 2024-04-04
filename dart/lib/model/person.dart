//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Person {
  /// Returns a new [Person] instance.
  Person({
    this.links,
    this.agreement,
    this.createdAt,
    this.email,
    this.enabled,
    this.familyName,
    this.givenName,
    this.id,
    this.jobTitle,
    required this.optIn,
    this.preferences,
    this.telephone,
    this.type,
    this.updatedAt,
    this.username,
  });

  /// Returns a new [Person] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Person? fromJson(Object? json) {
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

    return Person(
      links: PersonLinks.fromJson(json[r'_links']),
      agreement: PersonAgreement.fromJson(json[r'agreement']),
      createdAt: createdAt,
      email: json[r'email'],
      enabled: json[r'enabled'],
      familyName: json[r'familyName'],
      givenName: json[r'givenName'],
      id: json[r'id'],
      jobTitle: json[r'jobTitle'],
      optIn: json[r'optIn'],
      preferences: PersonPreferences.fromJson(json[r'preferences']),
      telephone: json[r'telephone'],
      type: json[r'type'],
      updatedAt: updatedAt,
      username: json[r'username'],
    );
  }

  PersonLinks? links;

  PersonAgreement? agreement;

  final DateTime? createdAt;

  String? email;

  bool? enabled;

  String? familyName;

  String? givenName;

  final String? id;

  String? jobTitle;

  bool optIn;

  PersonPreferences? preferences;

  String? telephone;

  String? type;

  final DateTime? updatedAt;

  String? username;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Person &&
        other.links == links &&
        other.agreement == agreement &&
        other.createdAt == createdAt &&
        other.email == email &&
        other.enabled == enabled &&
        other.familyName == familyName &&
        other.givenName == givenName &&
        other.id == id &&
        other.jobTitle == jobTitle &&
        other.optIn == optIn &&
        other.preferences == preferences &&
        other.telephone == telephone &&
        other.type == type &&
        other.updatedAt == updatedAt &&
        other.username == username;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (agreement == null ? 0 : agreement.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (email == null ? 0 : email.hashCode) +
      (enabled == null ? 0 : enabled.hashCode) +
      (familyName == null ? 0 : familyName.hashCode) +
      (givenName == null ? 0 : givenName.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (jobTitle == null ? 0 : jobTitle.hashCode) +
      optIn.hashCode +
      (preferences == null ? 0 : preferences.hashCode) +
      (telephone == null ? 0 : telephone.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (username == null ? 0 : username.hashCode);

  static List<Person> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Person>[];
    }

    return json.fold(<Person>[], (List<Person> previousValue, element) {
      final Person? object = Person.fromJson(element);
      if (object is Person) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Person> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Person>{};
    }

    return json.entries.fold(<String, Person>{},
        (Map<String, Person> previousValue, element) {
      final Person? object = Person.fromJson(element.value);
      if (object is Person) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Person-objects as value to a dart map
  static Map<String, List<Person>> mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Person>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Person>>(key, Person.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Person[links=$links, agreement=$agreement, createdAt=$createdAt, email=$email, enabled=$enabled, familyName=$familyName, givenName=$givenName, id=$id, jobTitle=$jobTitle, optIn=$optIn, preferences=$preferences, telephone=$telephone, type=$type, updatedAt=$updatedAt, username=$username]';

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
      if (keys == null ||
          keys.any((key) => RegExp(r'^agreement\.').hasMatch(key)))
        r'agreement': agreement?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^agreement\.'))) {
            previousValue.add(element.split(RegExp(r'^agreement\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'email')) r'email': email,
      if (keys == null || keys.contains(r'enabled')) r'enabled': enabled,
      if (keys == null || keys.contains(r'familyName'))
        r'familyName': familyName,
      if (keys == null || keys.contains(r'givenName')) r'givenName': givenName,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'jobTitle')) r'jobTitle': jobTitle,
      r'optIn': optIn,
      if (keys == null ||
          keys.any((key) => RegExp(r'^preferences\.').hasMatch(key)))
        r'preferences': preferences?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^preferences\.'))) {
            previousValue.add(element.split(RegExp(r'^preferences\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'telephone')) r'telephone': telephone,
      if (keys == null || keys.contains(r'type')) r'type': type,
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'username')) r'username': username,
    };
  }
}
