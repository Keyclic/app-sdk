part of keyclic_sdk_api.api;

class MemberContactPoint {
  MemberContactPoint({
    this.description,
    this.email,
    this.familyName,
    this.givenName,
    this.isOpen,
    this.name,
    this.telephone,
  });

  factory MemberContactPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MemberContactPoint(
      description: json['description'],
      email: json['email'],
      familyName: json['familyName'],
      givenName: json['givenName'],
      isOpen: json['isOpen'],
      name: json['name'],
      telephone: json['telephone'],
    );
  }

  String description;

  String email;

  String familyName;

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

    return other is MemberContactPoint &&
        runtimeType == other.runtimeType &&
        description == other.description &&
        email == other.email &&
        familyName == other.familyName &&
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
    hashCode ^= givenName?.hashCode ?? 0;
    hashCode ^= isOpen?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= telephone?.hashCode ?? 0;

    return hashCode;
  }

  static List<MemberContactPoint> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => MemberContactPoint.fromJson(value))
            ?.toList() ??
        <MemberContactPoint>[];
  }

  static Map<String, MemberContactPoint> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, MemberContactPoint>((String key, dynamic value) {
          return MapEntry(key, MemberContactPoint.fromJson(value));
        }) ??
        <String, MemberContactPoint>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (description != null) 'description': description,
      if (email != null) 'email': email,
      if (familyName != null) 'familyName': familyName,
      if (givenName != null) 'givenName': givenName,
      if (isOpen != null) 'isOpen': isOpen,
      if (name != null) 'name': name,
      if (telephone != null) 'telephone': telephone,
    };
  }

  @override
  String toString() {
    return 'MemberContactPoint[description=$description, email=$email, familyName=$familyName, givenName=$givenName, isOpen=$isOpen, name=$name, telephone=$telephone, ]';
  }
}
