//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MemberPatchContactPoint {
  /// Returns a new [MemberPatchContactPoint] instance.
  MemberPatchContactPoint({
    this.description,
    this.email,
    this.familyName,
    this.faxNumber,
    this.givenName,
    this.telephone,
    this.name,
  });

  /// Returns a new [MemberPatchContactPoint] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MemberPatchContactPoint? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return MemberPatchContactPoint(
      description: json[r'description'],
      email: json[r'email'],
      familyName: json[r'familyName'],
      faxNumber: json[r'faxNumber'],
      givenName: json[r'givenName'],
      telephone: json[r'telephone'],
      name: json[r'name'],
    );
  }

  String? description;

  String? email;

  String? familyName;

  String? faxNumber;

  String? givenName;

  String? telephone;

  String? name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberPatchContactPoint &&
        other.description == description &&
        other.email == email &&
        other.familyName == familyName &&
        other.faxNumber == faxNumber &&
        other.givenName == givenName &&
        other.telephone == telephone &&
        other.name == name;
  }

  @override
  int get hashCode =>
      (description == null ? 0 : description.hashCode) +
      (email == null ? 0 : email.hashCode) +
      (familyName == null ? 0 : familyName.hashCode) +
      (faxNumber == null ? 0 : faxNumber.hashCode) +
      (givenName == null ? 0 : givenName.hashCode) +
      (telephone == null ? 0 : telephone.hashCode) +
      (name == null ? 0 : name.hashCode);

  static List<MemberPatchContactPoint> listFromJson(Iterable? json) {
    if (json == null) {
      return <MemberPatchContactPoint>[];
    }

    return json.fold(<MemberPatchContactPoint>[],
        (List<MemberPatchContactPoint> previousValue, element) {
      final MemberPatchContactPoint? object =
          MemberPatchContactPoint.fromJson(element);
      if (object is MemberPatchContactPoint) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, MemberPatchContactPoint> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MemberPatchContactPoint>{};
    }

    return json.entries.fold(<String, MemberPatchContactPoint>{},
        (Map<String, MemberPatchContactPoint> previousValue, element) {
      final MemberPatchContactPoint? object =
          MemberPatchContactPoint.fromJson(element.value);
      if (object is MemberPatchContactPoint) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of MemberPatchContactPoint-objects as value to a dart map
  static Map<String, List<MemberPatchContactPoint>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<MemberPatchContactPoint>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<MemberPatchContactPoint>>(
          key, MemberPatchContactPoint.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'MemberPatchContactPoint[description=$description, email=$email, familyName=$familyName, faxNumber=$faxNumber, givenName=$givenName, telephone=$telephone, name=$name]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      if (keys == null || keys.contains(r'email')) r'email': email,
      if (keys == null || keys.contains(r'familyName'))
        r'familyName': familyName,
      if (keys == null || keys.contains(r'faxNumber')) r'faxNumber': faxNumber,
      if (keys == null || keys.contains(r'givenName')) r'givenName': givenName,
      if (keys == null || keys.contains(r'telephone')) r'telephone': telephone,
      if (keys == null || keys.contains(r'name')) r'name': name,
    };
  }
}
