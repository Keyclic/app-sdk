//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetAuthToken200Response {
  /// Returns a new [GetAuthToken200Response] instance.
  GetAuthToken200Response({
    this.accessToken,
    this.idToken,
    this.tokenType,
  });

  /// Returns a new [GetAuthToken200Response] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetAuthToken200Response? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GetAuthToken200Response(
      accessToken: json[r'accessToken'],
      idToken: json[r'idToken'],
      tokenType: json[r'tokenType'],
    );
  }

  String? accessToken;

  String? idToken;

  String? tokenType;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetAuthToken200Response &&
        other.accessToken == accessToken &&
        other.idToken == idToken &&
        other.tokenType == tokenType;
  }

  @override
  int get hashCode =>
      (accessToken == null ? 0 : accessToken.hashCode) +
      (idToken == null ? 0 : idToken.hashCode) +
      (tokenType == null ? 0 : tokenType.hashCode);

  static List<GetAuthToken200Response> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <GetAuthToken200Response>[];
    }

    return json.fold(<GetAuthToken200Response>[],
        (List<GetAuthToken200Response> previousValue, element) {
      final GetAuthToken200Response? object =
          GetAuthToken200Response.fromJson(element);
      if (object is GetAuthToken200Response) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetAuthToken200Response> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetAuthToken200Response>{};
    }

    return json.entries.fold(<String, GetAuthToken200Response>{},
        (Map<String, GetAuthToken200Response> previousValue, element) {
      final GetAuthToken200Response? object =
          GetAuthToken200Response.fromJson(element.value);
      if (object is GetAuthToken200Response) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetAuthToken200Response-objects as value to a dart map
  static Map<String, List<GetAuthToken200Response>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetAuthToken200Response>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetAuthToken200Response>>(
          key, GetAuthToken200Response.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GetAuthToken200Response[accessToken=$accessToken, idToken=$idToken, tokenType=$tokenType]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'accessToken'))
        r'accessToken': accessToken,
      if (keys == null || keys.contains(r'idToken')) r'idToken': idToken,
      if (keys == null || keys.contains(r'tokenType')) r'tokenType': tokenType,
    };
  }
}
