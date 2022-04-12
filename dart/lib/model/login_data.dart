//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class LoginData {
  /// Returns a new [LoginData] instance.
  LoginData({
    required this.login,
    required this.password,
  });

  /// Returns a new [LoginData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static LoginData? fromJson(Map<String, dynamic>? json) {
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
  int get hashCode => login.hashCode + password.hashCode;

  static List<LoginData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <LoginData>[];
    }
    return json
        .map((value) {
          return LoginData.fromJson(value);
        })
        .whereType<LoginData>()
        .toList();
  }

  static Map<String, LoginData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, LoginData>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, LoginData?>(key, LoginData.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, LoginData>;
  }

  // maps a json object with a list of LoginData-objects as value to a dart map
  static Map<String, List<LoginData>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<LoginData>>{
      if (json is Map)
        for (final entry in json!.entries)
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
