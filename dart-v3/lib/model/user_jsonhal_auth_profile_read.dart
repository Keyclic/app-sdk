//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class UserJsonhalAuthProfileRead {
  /// Returns a new [UserJsonhalAuthProfileRead] instance.
  UserJsonhalAuthProfileRead({
    required this.email,
    required this.username,
  });

  /// Returns a new [UserJsonhalAuthProfileRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static UserJsonhalAuthProfileRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return UserJsonhalAuthProfileRead(
      email: json[r'email'],
      username: json[r'username'],
    );
  }

  String email;

  String username;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is UserJsonhalAuthProfileRead &&
        other.email == email &&
        other.username == username;
  }

  @override
  int get hashCode => email.hashCode + username.hashCode;

  static List<UserJsonhalAuthProfileRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <UserJsonhalAuthProfileRead>[];
    }

    return json.fold(<UserJsonhalAuthProfileRead>[],
        (List<UserJsonhalAuthProfileRead> previousValue, element) {
      final UserJsonhalAuthProfileRead? object =
          UserJsonhalAuthProfileRead.fromJson(element);
      if (object is UserJsonhalAuthProfileRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, UserJsonhalAuthProfileRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, UserJsonhalAuthProfileRead>{};
    }

    return json.entries.fold(<String, UserJsonhalAuthProfileRead>{},
        (Map<String, UserJsonhalAuthProfileRead> previousValue, element) {
      final UserJsonhalAuthProfileRead? object =
          UserJsonhalAuthProfileRead.fromJson(element.value);
      if (object is UserJsonhalAuthProfileRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of UserJsonhalAuthProfileRead-objects as value to a dart map
  static Map<String, List<UserJsonhalAuthProfileRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<UserJsonhalAuthProfileRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<UserJsonhalAuthProfileRead>>(
          key, UserJsonhalAuthProfileRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'UserJsonhalAuthProfileRead[email=$email, username=$username]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'email': email,
      r'username': username,
    };
  }
}
