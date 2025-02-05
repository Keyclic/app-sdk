//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ContactPointWrite {
  /// Returns a new [ContactPointWrite] instance.
  ContactPointWrite({
    this.email,
    this.name,
    this.telephone,
    this.familyName,
    this.givenName,
  });

  /// Returns a new [ContactPointWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContactPointWrite? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ContactPointWrite(
      email: json[r'email'],
      name: json[r'name'],
      telephone: json[r'telephone'],
      familyName: json[r'familyName'],
      givenName: json[r'givenName'],
    );
  }

  String? email;

  String? name;

  String? telephone;

  /// Family name. In the U.S., the last name of a Person.
  String? familyName;

  /// Given name. In the U.S., the first name of a Person.
  String? givenName;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContactPointWrite &&
        other.email == email &&
        other.name == name &&
        other.telephone == telephone &&
        other.familyName == familyName &&
        other.givenName == givenName;
  }

  @override
  int get hashCode =>
      (email == null ? 0 : email.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (telephone == null ? 0 : telephone.hashCode) +
      (familyName == null ? 0 : familyName.hashCode) +
      (givenName == null ? 0 : givenName.hashCode);

  static List<ContactPointWrite> listFromJson(Iterable? json) {
    if (json == null) {
      return <ContactPointWrite>[];
    }

    return json.fold(<ContactPointWrite>[],
        (List<ContactPointWrite> previousValue, element) {
      final ContactPointWrite? object = ContactPointWrite.fromJson(element);
      if (object is ContactPointWrite) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContactPointWrite> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContactPointWrite>{};
    }

    return json.entries.fold(<String, ContactPointWrite>{},
        (Map<String, ContactPointWrite> previousValue, element) {
      final ContactPointWrite? object =
          ContactPointWrite.fromJson(element.value);
      if (object is ContactPointWrite) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContactPointWrite-objects as value to a dart map
  static Map<String, List<ContactPointWrite>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContactPointWrite>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContactPointWrite>>(
          key, ContactPointWrite.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ContactPointWrite[email=$email, name=$name, telephone=$telephone, familyName=$familyName, givenName=$givenName]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'email')) r'email': email,
      if (keys == null || keys.contains(r'name')) r'name': name,
      if (keys == null || keys.contains(r'telephone')) r'telephone': telephone,
      if (keys == null || keys.contains(r'familyName'))
        r'familyName': familyName,
      if (keys == null || keys.contains(r'givenName')) r'givenName': givenName,
    };
  }
}
