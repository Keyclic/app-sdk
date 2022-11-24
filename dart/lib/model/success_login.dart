//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class SuccessLogin {
  /// Returns a new [SuccessLogin] instance.
  SuccessLogin({
    this.accessToken,
    this.credentials,
    this.tokenType = 'Bearer',
  });

  /// Returns a new [SuccessLogin] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SuccessLogin? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SuccessLogin(
      accessToken: json[r'accessToken'],
      credentials: SuccessLoginCredentials.fromJson(json[r'credentials']),
      tokenType: json[r'tokenType'],
    );
  }

  String? accessToken;

  SuccessLoginCredentials? credentials;

  String? tokenType;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SuccessLogin &&
        other.accessToken == accessToken &&
        other.credentials == credentials &&
        other.tokenType == tokenType;
  }

  @override
  int get hashCode =>
      (accessToken == null ? 0 : accessToken.hashCode) +
      (credentials == null ? 0 : credentials.hashCode) +
      (tokenType == null ? 0 : tokenType.hashCode);

  static List<SuccessLogin> listFromJson(List<dynamic>? json) {
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
      'SuccessLogin[accessToken=$accessToken, credentials=$credentials, tokenType=$tokenType]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (accessToken != null) r'accessToken': accessToken,
      if (credentials != null) r'credentials': credentials,
      if (tokenType != null) r'tokenType': tokenType,
    };
  }
}
