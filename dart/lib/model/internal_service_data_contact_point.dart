part of keyclic_sdk_api.api;

class InternalServiceDataContactPoint {
  InternalServiceDataContactPoint({
    this.description,
    this.email,
    this.familyName,
    this.givenName,
    this.name,
    this.telephone,
  });

  factory InternalServiceDataContactPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InternalServiceDataContactPoint(
      description: json['description'],
      email: json['email'],
      familyName: json['familyName'],
      givenName: json['givenName'],
      name: json['name'],
      telephone: json['telephone'],
    );
  }

  String description;

  String email;

  String familyName;

  String givenName;

  String name;

  String telephone;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServiceDataContactPoint &&
        runtimeType == other.runtimeType &&
        description == other.description &&
        email == other.email &&
        familyName == other.familyName &&
        givenName == other.givenName &&
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
    hashCode ^= givenName?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= telephone?.hashCode ?? 0;

    return hashCode;
  }

  static List<InternalServiceDataContactPoint> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                InternalServiceDataContactPoint.fromJson(value))
            ?.toList() ??
        <InternalServiceDataContactPoint>[];
  }

  static Map<String, InternalServiceDataContactPoint> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, InternalServiceDataContactPoint>(
            (String key, dynamic value) {
          return MapEntry(key, InternalServiceDataContactPoint.fromJson(value));
        }) ??
        <String, InternalServiceDataContactPoint>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (description != null) 'description': description,
      if (email != null) 'email': email,
      if (familyName != null) 'familyName': familyName,
      if (givenName != null) 'givenName': givenName,
      if (name != null) 'name': name,
      if (telephone != null) 'telephone': telephone,
    };
  }

  @override
  String toString() {
    return 'InternalServiceDataContactPoint[description=$description, email=$email, familyName=$familyName, givenName=$givenName, name=$name, telephone=$telephone, ]';
  }
}
