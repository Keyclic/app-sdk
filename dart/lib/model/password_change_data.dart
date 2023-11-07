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

  static List<PasswordChangeData> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <PasswordChangeData>[];
    }

    return json.fold(<PasswordChangeData>[],
        (List<PasswordChangeData> previousValue, element) {
      final PasswordChangeData? object = PasswordChangeData.fromJson(element);
      if (object is PasswordChangeData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PasswordChangeData> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PasswordChangeData>{};
    }

    return json.entries.fold(<String, PasswordChangeData>{},
        (Map<String, PasswordChangeData> previousValue, element) {
      final PasswordChangeData? object =
          PasswordChangeData.fromJson(element.value);
      if (object is PasswordChangeData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PasswordChangeData-objects as value to a dart map
  static Map<String, List<PasswordChangeData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PasswordChangeData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PasswordChangeData>>(
          key, PasswordChangeData.listFromJson(value));
    });
  }

  @override
  String toString() => 'PasswordChangeData[password=$password]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      r'password': password,
    };
  }
}
