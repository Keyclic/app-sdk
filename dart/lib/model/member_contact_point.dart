//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MemberContactPoint {
  /// Returns a new [MemberContactPoint] instance.
  MemberContactPoint({
    this.description,
    this.email,
    this.familyName,
    this.faxNumber,
    this.givenName,
    this.isOpen,
    this.name,
    this.telephone,
  });

  /// Returns a new [MemberContactPoint] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MemberContactPoint? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MemberContactPoint(
      description: json[r'description'],
      email: json[r'email'],
      familyName: json[r'familyName'],
      faxNumber: json[r'faxNumber'],
      givenName: json[r'givenName'],
      isOpen: json[r'isOpen'],
      name: json[r'name'],
      telephone: json[r'telephone'],
    );
  }

  String? description;

  String? email;

  String? familyName;

  String? faxNumber;

  String? givenName;

  bool? isOpen;

  String? name;

  String? telephone;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberContactPoint &&
        other.description == description &&
        other.email == email &&
        other.familyName == familyName &&
        other.faxNumber == faxNumber &&
        other.givenName == givenName &&
        other.isOpen == isOpen &&
        other.name == name &&
        other.telephone == telephone;
  }

  @override
  int get hashCode =>
      (description == null ? 0 : description.hashCode) +
      (email == null ? 0 : email.hashCode) +
      (familyName == null ? 0 : familyName.hashCode) +
      (faxNumber == null ? 0 : faxNumber.hashCode) +
      (givenName == null ? 0 : givenName.hashCode) +
      (isOpen == null ? 0 : isOpen.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (telephone == null ? 0 : telephone.hashCode);

  static List<MemberContactPoint> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <MemberContactPoint>[];
    }

    return json.fold(<MemberContactPoint>[],
        (List<MemberContactPoint> previousValue, element) {
      final MemberContactPoint? object = MemberContactPoint.fromJson(element);
      if (object is MemberContactPoint) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, MemberContactPoint> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MemberContactPoint>{};
    }

    return json.entries.fold(<String, MemberContactPoint>{},
        (Map<String, MemberContactPoint> previousValue, element) {
      final MemberContactPoint? object =
          MemberContactPoint.fromJson(element.value);
      if (object is MemberContactPoint) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of MemberContactPoint-objects as value to a dart map
  static Map<String, List<MemberContactPoint>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<MemberContactPoint>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<MemberContactPoint>>(
          key, MemberContactPoint.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'MemberContactPoint[description=$description, email=$email, familyName=$familyName, faxNumber=$faxNumber, givenName=$givenName, isOpen=$isOpen, name=$name, telephone=$telephone]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      if (keys == null || keys.contains(r'email')) r'email': email,
      if (keys == null || keys.contains(r'familyName'))
        r'familyName': familyName,
      if (keys == null || keys.contains(r'faxNumber')) r'faxNumber': faxNumber,
      if (keys == null || keys.contains(r'givenName')) r'givenName': givenName,
      if (keys == null || keys.contains(r'isOpen')) r'isOpen': isOpen,
      if (keys == null || keys.contains(r'name')) r'name': name,
      if (keys == null || keys.contains(r'telephone')) r'telephone': telephone,
    };
  }
}
