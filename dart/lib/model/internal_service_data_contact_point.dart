//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class InternalServiceDataContactPoint {
  /// Returns a new [InternalServiceDataContactPoint] instance.
  InternalServiceDataContactPoint({
    this.description,
    this.email,
    this.familyName,
    this.faxNumber,
    this.givenName,
    this.name,
    this.telephone,
  });

  /// Returns a new [InternalServiceDataContactPoint] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InternalServiceDataContactPoint? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalServiceDataContactPoint(
      description: json[r'description'],
      email: json[r'email'],
      familyName: json[r'familyName'],
      faxNumber: json[r'faxNumber'],
      givenName: json[r'givenName'],
      name: json[r'name'],
      telephone: json[r'telephone'],
    );
  }

  String? description;

  String? email;

  String? familyName;

  String? faxNumber;

  String? givenName;

  String? name;

  String? telephone;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServiceDataContactPoint &&
        other.description == description &&
        other.email == email &&
        other.familyName == familyName &&
        other.faxNumber == faxNumber &&
        other.givenName == givenName &&
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
      (name == null ? 0 : name.hashCode) +
      (telephone == null ? 0 : telephone.hashCode);

  static List<InternalServiceDataContactPoint> listFromJson(
      Iterable<dynamic>? json) {
    if (json == null) {
      return <InternalServiceDataContactPoint>[];
    }

    return json.fold(<InternalServiceDataContactPoint>[],
        (List<InternalServiceDataContactPoint> previousValue, element) {
      final InternalServiceDataContactPoint? object =
          InternalServiceDataContactPoint.fromJson(element);
      if (object is InternalServiceDataContactPoint) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, InternalServiceDataContactPoint> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, InternalServiceDataContactPoint>{};
    }

    return json.entries.fold(<String, InternalServiceDataContactPoint>{},
        (Map<String, InternalServiceDataContactPoint> previousValue, element) {
      final InternalServiceDataContactPoint? object =
          InternalServiceDataContactPoint.fromJson(element.value);
      if (object is InternalServiceDataContactPoint) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of InternalServiceDataContactPoint-objects as value to a dart map
  static Map<String, List<InternalServiceDataContactPoint>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<InternalServiceDataContactPoint>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<InternalServiceDataContactPoint>>(
          key, InternalServiceDataContactPoint.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'InternalServiceDataContactPoint[description=$description, email=$email, familyName=$familyName, faxNumber=$faxNumber, givenName=$givenName, name=$name, telephone=$telephone]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && description != null) ||
          (keys?.contains(r'description') ?? false))
        r'description': description,
      if ((keys == null && email != null) ||
          (keys?.contains(r'email') ?? false))
        r'email': email,
      if ((keys == null && familyName != null) ||
          (keys?.contains(r'familyName') ?? false))
        r'familyName': familyName,
      if ((keys == null && faxNumber != null) ||
          (keys?.contains(r'faxNumber') ?? false))
        r'faxNumber': faxNumber,
      if ((keys == null && givenName != null) ||
          (keys?.contains(r'givenName') ?? false))
        r'givenName': givenName,
      if ((keys == null && name != null) || (keys?.contains(r'name') ?? false))
        r'name': name,
      if ((keys == null && telephone != null) ||
          (keys?.contains(r'telephone') ?? false))
        r'telephone': telephone,
    };
  }
}
