//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class SuccessLoginCredentials {
  /// Returns a new [SuccessLoginCredentials] instance.
  SuccessLoginCredentials({
    this.id,
    this.login,
  });

  /// Returns a new [SuccessLoginCredentials] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SuccessLoginCredentials? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return SuccessLoginCredentials(
      id: json[r'id'],
      login: json[r'login'],
    );
  }

  String? id;

  String? login;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SuccessLoginCredentials &&
        other.id == id &&
        other.login == login;
  }

  @override
  int get hashCode =>
      (id == null ? 0 : id.hashCode) + (login == null ? 0 : login.hashCode);

  static List<SuccessLoginCredentials> listFromJson(Iterable? json) {
    if (json == null) {
      return <SuccessLoginCredentials>[];
    }

    return json.fold(<SuccessLoginCredentials>[],
        (List<SuccessLoginCredentials> previousValue, element) {
      final SuccessLoginCredentials? object =
          SuccessLoginCredentials.fromJson(element);
      if (object is SuccessLoginCredentials) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, SuccessLoginCredentials> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SuccessLoginCredentials>{};
    }

    return json.entries.fold(<String, SuccessLoginCredentials>{},
        (Map<String, SuccessLoginCredentials> previousValue, element) {
      final SuccessLoginCredentials? object =
          SuccessLoginCredentials.fromJson(element.value);
      if (object is SuccessLoginCredentials) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of SuccessLoginCredentials-objects as value to a dart map
  static Map<String, List<SuccessLoginCredentials>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<SuccessLoginCredentials>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<SuccessLoginCredentials>>(
          key, SuccessLoginCredentials.listFromJson(value));
    });
  }

  @override
  String toString() => 'SuccessLoginCredentials[id=$id, login=$login]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'login')) r'login': login,
    };
  }
}
