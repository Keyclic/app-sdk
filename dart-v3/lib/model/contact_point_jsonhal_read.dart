//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ContactPointJsonhalRead {
  /// Returns a new [ContactPointJsonhalRead] instance.
  ContactPointJsonhalRead({
    this.links,
    this.description,
    this.email,
    this.faxNumber,
    this.telephone,
    this.familyName,
    this.givenName,
    this.name,
  });

  /// Returns a new [ContactPointJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContactPointJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ContactPointJsonhalRead(
      links: ArchivingJsonhalOrganizationPreferenceReadLinks.fromJson(
          json[r'_links']),
      description: json[r'description'],
      email: json[r'email'],
      faxNumber: json[r'faxNumber'],
      telephone: json[r'telephone'],
      familyName: json[r'familyName'],
      givenName: json[r'givenName'],
      name: json[r'name'],
    );
  }

  ArchivingJsonhalOrganizationPreferenceReadLinks? links;

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

    return other is ContactPointJsonhalRead &&
        other.links == links &&
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
      (links == null ? 0 : links.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (email == null ? 0 : email.hashCode) +
      (faxNumber == null ? 0 : faxNumber.hashCode) +
      (telephone == null ? 0 : telephone.hashCode) +
      (familyName == null ? 0 : familyName.hashCode) +
      (givenName == null ? 0 : givenName.hashCode) +
      (name == null ? 0 : name.hashCode);

  static List<ContactPointJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <ContactPointJsonhalRead>[];
    }

    return json.fold(<ContactPointJsonhalRead>[],
        (List<ContactPointJsonhalRead> previousValue, element) {
      final ContactPointJsonhalRead? object =
          ContactPointJsonhalRead.fromJson(element);
      if (object is ContactPointJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContactPointJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContactPointJsonhalRead>{};
    }

    return json.entries.fold(<String, ContactPointJsonhalRead>{},
        (Map<String, ContactPointJsonhalRead> previousValue, element) {
      final ContactPointJsonhalRead? object =
          ContactPointJsonhalRead.fromJson(element.value);
      if (object is ContactPointJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContactPointJsonhalRead-objects as value to a dart map
  static Map<String, List<ContactPointJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContactPointJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContactPointJsonhalRead>>(
          key, ContactPointJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ContactPointJsonhalRead[links=$links, description=$description, email=$email, faxNumber=$faxNumber, telephone=$telephone, familyName=$familyName, givenName=$givenName, name=$name]';

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