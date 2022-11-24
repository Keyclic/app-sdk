//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class SuccessLoginCredentials {
  /// Returns a new [SuccessLoginCredentials] instance.
  SuccessLoginCredentials({
    this.id,
    this.login,
  });

  /// Returns a new [SuccessLoginCredentials] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory SuccessLoginCredentials.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return SuccessLoginCredentials(
      id: json[r'id'],
      login: json[r'login'],
    );
  }

  String id;

  String login;

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

  static List<SuccessLoginCredentials> listFromJson(List<dynamic> json) {
    return <SuccessLoginCredentials>[
      if (json is List)
        for (dynamic value in json) SuccessLoginCredentials.fromJson(value),
    ];
  }

  static Map<String, SuccessLoginCredentials> mapFromJson(
      Map<String, dynamic> json) {
    return <String, SuccessLoginCredentials>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: SuccessLoginCredentials.fromJson(entry.value),
    };
  }

  // maps a json object with a list of SuccessLoginCredentials-objects as value to a dart map
  static Map<String, List<SuccessLoginCredentials>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<SuccessLoginCredentials>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: SuccessLoginCredentials.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'SuccessLoginCredentials[id=$id, login=$login]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) r'id': id,
      if (login != null) r'login': login,
    };
  }
}
