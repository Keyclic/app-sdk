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
  static LoginData? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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

    return json.fold(<LoginData>[], (List<LoginData> previousValue, element) {
      final LoginData? object = LoginData.fromJson(element);
      if (object is LoginData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, LoginData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, LoginData>{};
    }

    return json.entries.fold(<String, LoginData>{},
        (Map<String, LoginData> previousValue, element) {
      final LoginData? object = LoginData.fromJson(element.value);
      if (object is LoginData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of LoginData-objects as value to a dart map
  static Map<String, List<LoginData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<LoginData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<LoginData>>(
          key, LoginData.listFromJson(value));
    });
  }

  @override
  String toString() => 'LoginData[login=$login, password=$password]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'login': login,
      r'password': password,
    };
  }
}
