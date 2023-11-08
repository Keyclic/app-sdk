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

  static List<ResetPasswordData> listFromJson(Iterable<dynamic>? json) {
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
  String toString() => 'ResetPasswordData[email=$email]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      r'email': email,
    };
  }
}
