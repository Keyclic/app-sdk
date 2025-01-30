//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ContactPointWrite {
  /// Returns a new [ContactPointWrite] instance.
  ContactPointWrite({
    this.description,
    this.email,
    this.faxNumber,
    this.telephone,
    this.familyName,
    this.givenName,
    this.name,
    this.openingHours,
  });

  /// Returns a new [ContactPointWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContactPointWrite? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ContactPointWrite(
      description: json[r'description'],
      email: json[r'email'],
      faxNumber: json[r'faxNumber'],
      telephone: json[r'telephone'],
      familyName: json[r'familyName'],
      givenName: json[r'givenName'],
      name: json[r'name'],
      openingHours: json[r'openingHours'] == null
          ? null
          : List<String>.from(json[r'openingHours']),
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

  List<String>? openingHours;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContactPointWrite &&
        other.description == description &&
        other.email == email &&
        other.faxNumber == faxNumber &&
        other.telephone == telephone &&
        other.familyName == familyName &&
        other.givenName == givenName &&
        other.name == name &&
        DeepCollectionEquality.unordered()
            .equals(openingHours, other.openingHours);
  }

  @override
  int get hashCode =>
      (description == null ? 0 : description.hashCode) +
      (email == null ? 0 : email.hashCode) +
      (faxNumber == null ? 0 : faxNumber.hashCode) +
      (telephone == null ? 0 : telephone.hashCode) +
      (familyName == null ? 0 : familyName.hashCode) +
      (givenName == null ? 0 : givenName.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (openingHours == null ? 0 : openingHours.hashCode);

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
      'ContactPointWrite[description=$description, email=$email, faxNumber=$faxNumber, telephone=$telephone, familyName=$familyName, givenName=$givenName, name=$name, openingHours=$openingHours]';

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
      if (keys == null || keys.contains(r'openingHours'))
        r'openingHours': openingHours,
    };
  }
}
