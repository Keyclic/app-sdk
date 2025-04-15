//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class SuccessLogin {
  /// Returns a new [SuccessLogin] instance.
  SuccessLogin({
    this.accessToken,
    this.idToken,
    this.refreshToken,
  });

  /// Returns a new [SuccessLogin] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SuccessLogin? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return SuccessLogin(
      accessToken: json[r'accessToken'],
      idToken: json[r'idToken'],
      refreshToken: json[r'refreshToken'],
    );
  }

  String? accessToken;

  String? idToken;

  String? refreshToken;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SuccessLogin &&
        other.accessToken == accessToken &&
        other.idToken == idToken &&
        other.refreshToken == refreshToken;
  }

  @override
  int get hashCode =>
      (accessToken == null ? 0 : accessToken.hashCode) +
      (idToken == null ? 0 : idToken.hashCode) +
      (refreshToken == null ? 0 : refreshToken.hashCode);

  static List<SuccessLogin> listFromJson(Iterable? json) {
    if (json == null) {
      return <SuccessLogin>[];
    }

    return json.fold(<SuccessLogin>[],
        (List<SuccessLogin> previousValue, element) {
      final SuccessLogin? object = SuccessLogin.fromJson(element);
      if (object is SuccessLogin) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, SuccessLogin> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SuccessLogin>{};
    }

    return json.entries.fold(<String, SuccessLogin>{},
        (Map<String, SuccessLogin> previousValue, element) {
      final SuccessLogin? object = SuccessLogin.fromJson(element.value);
      if (object is SuccessLogin) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of SuccessLogin-objects as value to a dart map
  static Map<String, List<SuccessLogin>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<SuccessLogin>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<SuccessLogin>>(
          key, SuccessLogin.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'SuccessLogin[accessToken=$accessToken, idToken=$idToken, refreshToken=$refreshToken]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'accessToken'))
        r'accessToken': accessToken,
      if (keys == null || keys.contains(r'idToken')) r'idToken': idToken,
      if (keys == null || keys.contains(r'refreshToken'))
        r'refreshToken': refreshToken,
    };
  }
}
