//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class UserAuthProfileRead {
  /// Returns a new [UserAuthProfileRead] instance.
  UserAuthProfileRead({
    this.email,
    this.username,
  });

  /// Returns a new [UserAuthProfileRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static UserAuthProfileRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return UserAuthProfileRead(
      email: json[r'email'],
      username: json[r'username'],
    );
  }

  String? email;

  String? username;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is UserAuthProfileRead &&
        other.email == email &&
        other.username == username;
  }

  @override
  int get hashCode =>
      (email == null ? 0 : email.hashCode) +
      (username == null ? 0 : username.hashCode);

  static List<UserAuthProfileRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <UserAuthProfileRead>[];
    }

    return json.fold(<UserAuthProfileRead>[],
        (List<UserAuthProfileRead> previousValue, element) {
      final UserAuthProfileRead? object = UserAuthProfileRead.fromJson(element);
      if (object is UserAuthProfileRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, UserAuthProfileRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, UserAuthProfileRead>{};
    }

    return json.entries.fold(<String, UserAuthProfileRead>{},
        (Map<String, UserAuthProfileRead> previousValue, element) {
      final UserAuthProfileRead? object =
          UserAuthProfileRead.fromJson(element.value);
      if (object is UserAuthProfileRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of UserAuthProfileRead-objects as value to a dart map
  static Map<String, List<UserAuthProfileRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<UserAuthProfileRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<UserAuthProfileRead>>(
          key, UserAuthProfileRead.listFromJson(value));
    });
  }

  @override
  String toString() => 'UserAuthProfileRead[email=$email, username=$username]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'email')) r'email': email,
      if (keys == null || keys.contains(r'username')) r'username': username,
    };
  }
}
