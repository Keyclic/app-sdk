//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ProfileAuthProfileRead {
  /// Returns a new [ProfileAuthProfileRead] instance.
  ProfileAuthProfileRead({
    this.types,
    this.connections,
    this.user,
    this.firstConnection,
  });

  /// Returns a new [ProfileAuthProfileRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ProfileAuthProfileRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ProfileAuthProfileRead(
      types: json[r'types'] == null ? null : List<String>.from(json[r'types']),
      connections: ConnectionAuthProfileRead.listFromJson(json[r'connections']),
      user: UserAuthProfileRead.fromJson(json[r'user']),
      firstConnection: json[r'firstConnection'],
    );
  }

  /// Available connection types for the given email address. These might include password, enterprise, social.
  final List<String>? types;

  List<ConnectionAuthProfileRead>? connections;

  UserAuthProfileRead? user;

  /// Represents whether a user is making their first connection or interaction with the service.
  final bool? firstConnection;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ProfileAuthProfileRead &&
        DeepCollectionEquality.unordered().equals(types, other.types) &&
        DeepCollectionEquality.unordered()
            .equals(connections, other.connections) &&
        other.user == user &&
        other.firstConnection == firstConnection;
  }

  @override
  int get hashCode =>
      (types == null ? 0 : types.hashCode) +
      (connections == null ? 0 : connections.hashCode) +
      (user == null ? 0 : user.hashCode) +
      (firstConnection == null ? 0 : firstConnection.hashCode);

  static List<ProfileAuthProfileRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ProfileAuthProfileRead>[];
    }

    return json.fold(<ProfileAuthProfileRead>[],
        (List<ProfileAuthProfileRead> previousValue, element) {
      final ProfileAuthProfileRead? object =
          ProfileAuthProfileRead.fromJson(element);
      if (object is ProfileAuthProfileRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ProfileAuthProfileRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ProfileAuthProfileRead>{};
    }

    return json.entries.fold(<String, ProfileAuthProfileRead>{},
        (Map<String, ProfileAuthProfileRead> previousValue, element) {
      final ProfileAuthProfileRead? object =
          ProfileAuthProfileRead.fromJson(element.value);
      if (object is ProfileAuthProfileRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ProfileAuthProfileRead-objects as value to a dart map
  static Map<String, List<ProfileAuthProfileRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ProfileAuthProfileRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ProfileAuthProfileRead>>(
          key, ProfileAuthProfileRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ProfileAuthProfileRead[types=$types, connections=$connections, user=$user, firstConnection=$firstConnection]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'types')) r'types': types,
      if (keys == null || keys.contains(r'connections'))
        r'connections': connections,
      if (keys == null || keys.any((key) => RegExp(r'^user\.').hasMatch(key)))
        r'user': user?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^user\.'))) {
            previousValue.add(element.split(RegExp(r'^user\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'firstConnection'))
        r'firstConnection': firstConnection,
    };
  }
}
