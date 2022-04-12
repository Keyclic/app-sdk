//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ResetPasswordData {
  /// Returns a new [ResetPasswordData] instance.
  ResetPasswordData({
    required this.email,
  });

  /// Returns a new [ResetPasswordData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResetPasswordData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ResetPasswordData(
      email: json[r'email'],
    );
  }

  String email;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ResetPasswordData && other.email == email;
  }

  @override
  int get hashCode => email.hashCode;

  static List<ResetPasswordData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ResetPasswordData>[];
    }
    return json
        .map((value) {
          return ResetPasswordData.fromJson(value);
        })
        .whereType<ResetPasswordData>()
        .toList();
  }

  static Map<String, ResetPasswordData> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ResetPasswordData>{};
    }

    final map = json.map((key, value) => MapEntry<String, ResetPasswordData?>(
        key, ResetPasswordData.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ResetPasswordData>;
  }

  // maps a json object with a list of ResetPasswordData-objects as value to a dart map
  static Map<String, List<ResetPasswordData>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ResetPasswordData>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ResetPasswordData.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ResetPasswordData[email=$email]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'email': email,
    };
  }
}
