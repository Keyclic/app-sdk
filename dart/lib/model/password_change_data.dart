//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PasswordChangeData {
  /// Returns a new [PasswordChangeData] instance.
  PasswordChangeData({
    @required this.password,
  });

  /// Returns a new [PasswordChangeData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PasswordChangeData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PasswordChangeData(
      password: json[r'password'],
    );
  }

  String password;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PasswordChangeData && other.password == password;
  }

  @override
  int get hashCode => (password == null ? 0 : password.hashCode);

  static List<PasswordChangeData> listFromJson(List<dynamic> json) {
    return <PasswordChangeData>[
      if (json is List)
        for (dynamic value in json) PasswordChangeData.fromJson(value),
    ];
  }

  static Map<String, PasswordChangeData> mapFromJson(
      Map<String, dynamic> json) {
    return <String, PasswordChangeData>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PasswordChangeData.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PasswordChangeData-objects as value to a dart map
  static Map<String, List<PasswordChangeData>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PasswordChangeData>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PasswordChangeData.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PasswordChangeData[password=$password]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'password': password,
    };
  }
}
