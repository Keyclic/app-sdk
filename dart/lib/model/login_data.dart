//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class LoginData {
  /// Returns a new [LoginData] instance.
  LoginData({
    @required this.login,
    @required this.password,
  });

  /// Returns a new [LoginData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory LoginData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return LoginData(
      login: json[r'login'],
      password: json[r'password'],
    );
  }

  String login;

  String password;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is LoginData &&
        other.login == login &&
        other.password == password;
  }

  @override
  int get hashCode =>
      (login == null ? 0 : login.hashCode) +
      (password == null ? 0 : password.hashCode);

  static List<LoginData> listFromJson(List<dynamic> json) {
    return <LoginData>[
      if (json is List)
        for (dynamic value in json) LoginData.fromJson(value),
    ];
  }

  static Map<String, LoginData> mapFromJson(Map<String, dynamic> json) {
    return <String, LoginData>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: LoginData.fromJson(entry.value),
    };
  }

  // maps a json object with a list of LoginData-objects as value to a dart map
  static Map<String, List<LoginData>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<LoginData>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: LoginData.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'LoginData[login=$login, password=$password]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'login': login,
      r'password': password,
    };
  }
}
