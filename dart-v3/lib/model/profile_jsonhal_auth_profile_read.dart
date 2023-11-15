//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ProfileJsonhalAuthProfileRead {
  /// Returns a new [ProfileJsonhalAuthProfileRead] instance.
  ProfileJsonhalAuthProfileRead({
    this.links,
    this.types,
    this.connections,
    this.firstConnection,
  });

  /// Returns a new [ProfileJsonhalAuthProfileRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ProfileJsonhalAuthProfileRead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ProfileJsonhalAuthProfileRead(
      links: AssetTypeJsonhalReadLinks.fromJson(json[r'_links']),
      types: json[r'types'] == null ? null : List<String>.from(json[r'types']),
      connections:
          ConnectionJsonhalAuthProfileRead.listFromJson(json[r'connections']),
      firstConnection: json[r'firstConnection'],
    );
  }

  AssetTypeJsonhalReadLinks? links;

  /// Available connection types for the given email address. These might include password, enterprise, social.
  final List<String>? types;

  List<ConnectionJsonhalAuthProfileRead>? connections;

  /// Represents whether a user is making their first connection or interaction with the service.
  final bool? firstConnection;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ProfileJsonhalAuthProfileRead &&
        other.links == links &&
        DeepCollectionEquality.unordered().equals(types, other.types) &&
        DeepCollectionEquality.unordered()
            .equals(connections, other.connections) &&
        other.firstConnection == firstConnection;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (types == null ? 0 : types.hashCode) +
      (connections == null ? 0 : connections.hashCode) +
      (firstConnection == null ? 0 : firstConnection.hashCode);

  static List<ProfileJsonhalAuthProfileRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ProfileJsonhalAuthProfileRead>[];
    }

    return json.fold(<ProfileJsonhalAuthProfileRead>[],
        (List<ProfileJsonhalAuthProfileRead> previousValue, element) {
      final ProfileJsonhalAuthProfileRead? object =
          ProfileJsonhalAuthProfileRead.fromJson(element);
      if (object is ProfileJsonhalAuthProfileRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ProfileJsonhalAuthProfileRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ProfileJsonhalAuthProfileRead>{};
    }

    return json.entries.fold(<String, ProfileJsonhalAuthProfileRead>{},
        (Map<String, ProfileJsonhalAuthProfileRead> previousValue, element) {
      final ProfileJsonhalAuthProfileRead? object =
          ProfileJsonhalAuthProfileRead.fromJson(element.value);
      if (object is ProfileJsonhalAuthProfileRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ProfileJsonhalAuthProfileRead-objects as value to a dart map
  static Map<String, List<ProfileJsonhalAuthProfileRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ProfileJsonhalAuthProfileRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ProfileJsonhalAuthProfileRead>>(
          key, ProfileJsonhalAuthProfileRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ProfileJsonhalAuthProfileRead[links=$links, types=$types, connections=$connections, firstConnection=$firstConnection]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && links != null) ||
          (keys?.contains(r'links') ?? false))
        r'_links': links?.toJson(),
      if ((keys == null && types != null) ||
          (keys?.contains(r'types') ?? false))
        r'types': types,
      if ((keys == null && connections != null) ||
          (keys?.contains(r'connections') ?? false))
        r'connections': connections,
      if ((keys == null && firstConnection != null) ||
          (keys?.contains(r'firstConnection') ?? false))
        r'firstConnection': firstConnection,
    };
  }
}