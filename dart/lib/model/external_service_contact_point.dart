part of keyclic_sdk_api.api;

class ExternalServiceContactPoint {
  ExternalServiceContactPoint({
    this.description,
    this.email,
    this.familyName,
    this.faxNumber,
    this.givenName,
    this.isOpen,
    this.name,
    this.telephone,
  });

  factory ExternalServiceContactPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ExternalServiceContactPoint(
      description: json['description'],
      email: json['email'],
      familyName: json['familyName'],
      faxNumber: json['faxNumber'],
      givenName: json['givenName'],
      isOpen: json['isOpen'],
      name: json['name'],
      telephone: json['telephone'],
    );
  }

  String description;

  String email;

  String familyName;

  String faxNumber;

  String givenName;

  bool isOpen;

  String name;

  String telephone;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalServiceContactPoint &&
        runtimeType == other.runtimeType &&
        description == other.description &&
        email == other.email &&
        familyName == other.familyName &&
        faxNumber == other.faxNumber &&
        givenName == other.givenName &&
        isOpen == other.isOpen &&
        name == other.name &&
        telephone == other.telephone;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= email?.hashCode ?? 0;
    hashCode ^= familyName?.hashCode ?? 0;
    hashCode ^= faxNumber?.hashCode ?? 0;
    hashCode ^= givenName?.hashCode ?? 0;
    hashCode ^= isOpen?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= telephone?.hashCode ?? 0;

    return hashCode;
  }

  static List<ExternalServiceContactPoint> listFromJson(List<dynamic> json) {
    return json
            ?.map(
                (dynamic value) => ExternalServiceContactPoint.fromJson(value))
            ?.toList() ??
        <ExternalServiceContactPoint>[];
  }

  static Map<String, ExternalServiceContactPoint> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ExternalServiceContactPoint>(
            (String key, dynamic value) {
          return MapEntry(key, ExternalServiceContactPoint.fromJson(value));
        }) ??
        <String, ExternalServiceContactPoint>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (description != null) 'description': description,
      if (email != null) 'email': email,
      if (familyName != null) 'familyName': familyName,
      if (faxNumber != null) 'faxNumber': faxNumber,
      if (givenName != null) 'givenName': givenName,
      if (isOpen != null) 'isOpen': isOpen,
      if (name != null) 'name': name,
      if (telephone != null) 'telephone': telephone,
    };
  }

  @override
  String toString() {
    return 'ExternalServiceContactPoint[description=$description, email=$email, familyName=$familyName, faxNumber=$faxNumber, givenName=$givenName, isOpen=$isOpen, name=$name, telephone=$telephone, ]';
  }
}
