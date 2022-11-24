//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

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
  factory InternalServiceDataContactPoint.fromJson(Map<String, dynamic> json) {
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

  String description;

  String email;

  String familyName;

  String faxNumber;

  String givenName;

  String name;

  String telephone;

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
      List<dynamic> json) {
    return <InternalServiceDataContactPoint>[
      if (json is List)
        for (dynamic value in json)
          InternalServiceDataContactPoint.fromJson(value),
    ];
  }

  static Map<String, InternalServiceDataContactPoint> mapFromJson(
      Map<String, dynamic> json) {
    return <String, InternalServiceDataContactPoint>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: InternalServiceDataContactPoint.fromJson(entry.value),
    };
  }

  // maps a json object with a list of InternalServiceDataContactPoint-objects as value to a dart map
  static Map<String, List<InternalServiceDataContactPoint>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<InternalServiceDataContactPoint>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: InternalServiceDataContactPoint.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'InternalServiceDataContactPoint[description=$description, email=$email, familyName=$familyName, faxNumber=$faxNumber, givenName=$givenName, name=$name, telephone=$telephone]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (description != null) r'description': description,
      if (email != null) r'email': email,
      if (familyName != null) r'familyName': familyName,
      if (faxNumber != null) r'faxNumber': faxNumber,
      if (givenName != null) r'givenName': givenName,
      if (name != null) r'name': name,
      if (telephone != null) r'telephone': telephone,
    };
  }
}
