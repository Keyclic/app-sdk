//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class UserJsonhalAuthProfileRead {
  /// Returns a new [UserJsonhalAuthProfileRead] instance.
  UserJsonhalAuthProfileRead({
    this.links,
    this.email,
    this.username,
  });

  /// Returns a new [UserJsonhalAuthProfileRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static UserJsonhalAuthProfileRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return UserJsonhalAuthProfileRead(
      links: AssetTypeJsonhalReadLinks.fromJson(json[r'_links']),
      email: json[r'email'],
      username: json[r'username'],
    );
  }

  AssetTypeJsonhalReadLinks? links;

  String? email;

  String? username;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is UserJsonhalAuthProfileRead &&
        other.links == links &&
        other.email == email &&
        other.username == username;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (email == null ? 0 : email.hashCode) +
      (username == null ? 0 : username.hashCode);

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
      'UserJsonhalAuthProfileRead[links=$links, email=$email, username=$username]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'email')) r'email': email,
      if (keys == null || keys.contains(r'username')) r'username': username,
    };
  }
}
