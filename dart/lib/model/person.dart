//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

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
    @required this.optIn,
    this.preferences,
    this.telephone,
    this.type,
    this.updatedAt,
    this.username,
  });

  /// Returns a new [Person] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory Person.fromJson(Map<String, dynamic> json) {
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

  PersonLinks links;

  PersonAgreement agreement;

  DateTime createdAt;

  String email;

  bool enabled;

  String familyName;

  String givenName;

  String id;

  String jobTitle;

  bool optIn;

  PersonPreferences preferences;

  String telephone;

  String type;

  DateTime updatedAt;

  String username;

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
      (optIn == null ? 0 : optIn.hashCode) +
      (preferences == null ? 0 : preferences.hashCode) +
      (telephone == null ? 0 : telephone.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (username == null ? 0 : username.hashCode);

  static List<Person> listFromJson(List<dynamic> json) {
    return <Person>[
      if (json is List)
        for (dynamic value in json) Person.fromJson(value),
    ];
  }

  static Map<String, Person> mapFromJson(Map<String, dynamic> json) {
    return <String, Person>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Person.fromJson(entry.value),
    };
  }

  // maps a json object with a list of Person-objects as value to a dart map
  static Map<String, List<Person>> mapListFromJson(Map<String, dynamic> json) {
    return <String, List<Person>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Person.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'Person[links=$links, agreement=$agreement, createdAt=$createdAt, email=$email, enabled=$enabled, familyName=$familyName, givenName=$givenName, id=$id, jobTitle=$jobTitle, optIn=$optIn, preferences=$preferences, telephone=$telephone, type=$type, updatedAt=$updatedAt, username=$username]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (links != null) r'_links': links,
      if (agreement != null) r'agreement': agreement,
      if (createdAt != null) r'createdAt': createdAt.toUtc().toIso8601String(),
      if (email != null) r'email': email,
      if (enabled != null) r'enabled': enabled,
      if (familyName != null) r'familyName': familyName,
      if (givenName != null) r'givenName': givenName,
      if (id != null) r'id': id,
      if (jobTitle != null) r'jobTitle': jobTitle,
      r'optIn': optIn,
      if (preferences != null) r'preferences': preferences,
      if (telephone != null) r'telephone': telephone,
      if (type != null) r'type': type,
      if (updatedAt != null) r'updatedAt': updatedAt.toUtc().toIso8601String(),
      if (username != null) r'username': username,
    };
  }
}
