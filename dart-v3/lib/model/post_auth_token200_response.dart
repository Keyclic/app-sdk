//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PostAuthToken200Response {
  /// Returns a new [PostAuthToken200Response] instance.
  PostAuthToken200Response({
    this.accessToken,
    this.idToken,
    this.refreshToken,
  });

  /// Returns a new [PostAuthToken200Response] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PostAuthToken200Response? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PostAuthToken200Response(
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

    return other is PostAuthToken200Response &&
        other.accessToken == accessToken &&
        other.idToken == idToken &&
        other.refreshToken == refreshToken;
  }

  @override
  int get hashCode =>
      (accessToken == null ? 0 : accessToken.hashCode) +
      (idToken == null ? 0 : idToken.hashCode) +
      (refreshToken == null ? 0 : refreshToken.hashCode);

  static List<PostAuthToken200Response> listFromJson(Iterable? json) {
    if (json == null) {
      return <PostAuthToken200Response>[];
    }

    return json.fold(<PostAuthToken200Response>[],
        (List<PostAuthToken200Response> previousValue, element) {
      final PostAuthToken200Response? object =
          PostAuthToken200Response.fromJson(element);
      if (object is PostAuthToken200Response) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PostAuthToken200Response> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PostAuthToken200Response>{};
    }

    return json.entries.fold(<String, PostAuthToken200Response>{},
        (Map<String, PostAuthToken200Response> previousValue, element) {
      final PostAuthToken200Response? object =
          PostAuthToken200Response.fromJson(element.value);
      if (object is PostAuthToken200Response) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PostAuthToken200Response-objects as value to a dart map
  static Map<String, List<PostAuthToken200Response>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PostAuthToken200Response>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PostAuthToken200Response>>(
          key, PostAuthToken200Response.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PostAuthToken200Response[accessToken=$accessToken, idToken=$idToken, refreshToken=$refreshToken]';

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
