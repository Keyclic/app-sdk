//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ResetPasswordData {
  /// Returns a new [ResetPasswordData] instance.
  ResetPasswordData({
    this.email,
    required this.username,
  });

  /// Returns a new [ResetPasswordData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResetPasswordData? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ResetPasswordData(
      email: json[r'email'],
      username: json[r'username'],
    );
  }

  String? email;

  String username;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ResetPasswordData &&
        other.email == email &&
        other.username == username;
  }

  @override
  int get hashCode => (email == null ? 0 : email.hashCode) + username.hashCode;

  static List<ResetPasswordData> listFromJson(Iterable? json) {
    if (json == null) {
      return <ResetPasswordData>[];
    }

    return json.fold(<ResetPasswordData>[],
        (List<ResetPasswordData> previousValue, element) {
      final ResetPasswordData? object = ResetPasswordData.fromJson(element);
      if (object is ResetPasswordData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ResetPasswordData> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ResetPasswordData>{};
    }

    return json.entries.fold(<String, ResetPasswordData>{},
        (Map<String, ResetPasswordData> previousValue, element) {
      final ResetPasswordData? object =
          ResetPasswordData.fromJson(element.value);
      if (object is ResetPasswordData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ResetPasswordData-objects as value to a dart map
  static Map<String, List<ResetPasswordData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ResetPasswordData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ResetPasswordData>>(
          key, ResetPasswordData.listFromJson(value));
    });
  }

  @override
  String toString() => 'ResetPasswordData[email=$email, username=$username]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'email')) r'email': email,
      r'username': username,
    };
  }
}
