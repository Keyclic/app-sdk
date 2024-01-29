//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ProfileProfileInput {
  /// Returns a new [ProfileProfileInput] instance.
  ProfileProfileInput({
    required this.username,
  });

  /// Returns a new [ProfileProfileInput] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ProfileProfileInput? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ProfileProfileInput(
      username: json[r'username'],
    );
  }

  String username;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ProfileProfileInput && other.username == username;
  }

  @override
  int get hashCode => username.hashCode;

  static List<ProfileProfileInput> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ProfileProfileInput>[];
    }

    return json.fold(<ProfileProfileInput>[],
        (List<ProfileProfileInput> previousValue, element) {
      final ProfileProfileInput? object = ProfileProfileInput.fromJson(element);
      if (object is ProfileProfileInput) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ProfileProfileInput> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ProfileProfileInput>{};
    }

    return json.entries.fold(<String, ProfileProfileInput>{},
        (Map<String, ProfileProfileInput> previousValue, element) {
      final ProfileProfileInput? object =
          ProfileProfileInput.fromJson(element.value);
      if (object is ProfileProfileInput) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ProfileProfileInput-objects as value to a dart map
  static Map<String, List<ProfileProfileInput>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ProfileProfileInput>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ProfileProfileInput>>(
          key, ProfileProfileInput.listFromJson(value));
    });
  }

  @override
  String toString() => 'ProfileProfileInput[username=$username]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'username': username,
    };
  }
}
