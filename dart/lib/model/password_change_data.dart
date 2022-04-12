//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PasswordChangeData {
  /// Returns a new [PasswordChangeData] instance.
  PasswordChangeData({
    required this.password,
  });

  /// Returns a new [PasswordChangeData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PasswordChangeData? fromJson(Map<String, dynamic>? json) {
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
  int get hashCode => password.hashCode;

  static List<PasswordChangeData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PasswordChangeData>[];
    }
    return json
        .map((value) {
          return PasswordChangeData.fromJson(value);
        })
        .whereType<PasswordChangeData>()
        .toList();
  }

  static Map<String, PasswordChangeData> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PasswordChangeData>{};
    }

    final map = json.map((key, value) => MapEntry<String, PasswordChangeData?>(
        key, PasswordChangeData.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PasswordChangeData>;
  }

  // maps a json object with a list of PasswordChangeData-objects as value to a dart map
  static Map<String, List<PasswordChangeData>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PasswordChangeData>>{
      if (json is Map)
        for (final entry in json!.entries)
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
