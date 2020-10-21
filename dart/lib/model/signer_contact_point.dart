part of keyclic_sdk_api.api;

class SignerContactPoint {
  SignerContactPoint({
    this.description,
    this.email,
    this.name,
    this.telephone,
  });

  factory SignerContactPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return SignerContactPoint(
      description: json['description'],
      email: json['email'],
      name: json['name'],
      telephone: json['telephone'],
    );
  }

  String description;

  String email;

  String name;

  String telephone;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignerContactPoint &&
        runtimeType == other.runtimeType &&
        description == other.description &&
        email == other.email &&
        name == other.name &&
        telephone == other.telephone;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= email?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= telephone?.hashCode ?? 0;

    return hashCode;
  }

  static List<SignerContactPoint> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => SignerContactPoint.fromJson(value))
            ?.toList() ??
        <SignerContactPoint>[];
  }

  static Map<String, SignerContactPoint> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, SignerContactPoint>((String key, dynamic value) {
          return MapEntry(key, SignerContactPoint.fromJson(value));
        }) ??
        <String, SignerContactPoint>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (description != null) 'description': description,
      if (email != null) 'email': email,
      if (name != null) 'name': name,
      if (telephone != null) 'telephone': telephone,
    };
  }

  @override
  String toString() {
    return 'SignerContactPoint[description=$description, email=$email, name=$name, telephone=$telephone, ]';
  }
}