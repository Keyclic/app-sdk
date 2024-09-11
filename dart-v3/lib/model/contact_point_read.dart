//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ContactPointRead {
  /// Returns a new [ContactPointRead] instance.
  ContactPointRead({
    this.description,
    this.email,
    this.faxNumber,
    this.telephone,
    this.familyName,
    this.givenName,
    this.name,
  });

  /// Returns a new [ContactPointRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContactPointRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ContactPointRead(
      description: json[r'description'],
      email: json[r'email'],
      faxNumber: json[r'faxNumber'],
      telephone: json[r'telephone'],
      familyName: json[r'familyName'],
      givenName: json[r'givenName'],
      name: json[r'name'],
    );
  }

  String? description;

  String? email;

  String? faxNumber;

  String? telephone;

  /// Family name. In the U.S., the last name of a Person.
  String? familyName;

  /// Given name. In the U.S., the first name of a Person.
  String? givenName;

  String? name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContactPointRead &&
        other.description == description &&
        other.email == email &&
        other.faxNumber == faxNumber &&
        other.telephone == telephone &&
        other.familyName == familyName &&
        other.givenName == givenName &&
        other.name == name;
  }

  @override
  int get hashCode =>
      (description == null ? 0 : description.hashCode) +
      (email == null ? 0 : email.hashCode) +
      (faxNumber == null ? 0 : faxNumber.hashCode) +
      (telephone == null ? 0 : telephone.hashCode) +
      (familyName == null ? 0 : familyName.hashCode) +
      (givenName == null ? 0 : givenName.hashCode) +
      (name == null ? 0 : name.hashCode);

  static List<ContactPointRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <ContactPointRead>[];
    }

    return json.fold(<ContactPointRead>[],
        (List<ContactPointRead> previousValue, element) {
      final ContactPointRead? object = ContactPointRead.fromJson(element);
      if (object is ContactPointRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContactPointRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContactPointRead>{};
    }

    return json.entries.fold(<String, ContactPointRead>{},
        (Map<String, ContactPointRead> previousValue, element) {
      final ContactPointRead? object = ContactPointRead.fromJson(element.value);
      if (object is ContactPointRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContactPointRead-objects as value to a dart map
  static Map<String, List<ContactPointRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContactPointRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContactPointRead>>(
          key, ContactPointRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ContactPointRead[description=$description, email=$email, faxNumber=$faxNumber, telephone=$telephone, familyName=$familyName, givenName=$givenName, name=$name]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      if (keys == null || keys.contains(r'email')) r'email': email,
      if (keys == null || keys.contains(r'faxNumber')) r'faxNumber': faxNumber,
      if (keys == null || keys.contains(r'telephone')) r'telephone': telephone,
      if (keys == null || keys.contains(r'familyName'))
        r'familyName': familyName,
      if (keys == null || keys.contains(r'givenName')) r'givenName': givenName,
      if (keys == null || keys.contains(r'name')) r'name': name,
    };
  }
}
