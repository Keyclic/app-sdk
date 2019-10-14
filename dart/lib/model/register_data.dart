part of keyclic_sdk_api.api;

class RegisterData {
  RegisterData({
    this.email,
    this.password,
  });

  RegisterData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    email = json['email'];
    password = json['password'];
  }

  String email;

  String password;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RegisterData &&
        runtimeType == other.runtimeType &&
        email == other.email &&
        password == other.password;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= email?.hashCode ?? 0;
    hashCode ^= password?.hashCode ?? 0;

    return hashCode;
  }

  static List<RegisterData> listFromJson(List<dynamic> json) {
    return json == null
        ? <RegisterData>[]
        : json.map((dynamic value) => RegisterData.fromJson(value)).toList();
  }

  static Map<String, RegisterData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RegisterData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = RegisterData.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (email != null) 'email': email,
      if (password != null) 'password': password,
    };
  }

  @override
  String toString() {
    return 'RegisterData[email=$email, password=$password, ]';
  }
}
