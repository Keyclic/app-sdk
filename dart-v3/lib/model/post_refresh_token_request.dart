//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PostRefreshTokenRequest {
  /// Returns a new [PostRefreshTokenRequest] instance.
  PostRefreshTokenRequest({
    required this.refreshToken,
  });

  /// Returns a new [PostRefreshTokenRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PostRefreshTokenRequest? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PostRefreshTokenRequest(
      refreshToken: json[r'refreshToken'],
    );
  }

  String refreshToken;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PostRefreshTokenRequest &&
        other.refreshToken == refreshToken;
  }

  @override
  int get hashCode => refreshToken.hashCode;

  static List<PostRefreshTokenRequest> listFromJson(Iterable? json) {
    if (json == null) {
      return <PostRefreshTokenRequest>[];
    }

    return json.fold(<PostRefreshTokenRequest>[],
        (List<PostRefreshTokenRequest> previousValue, element) {
      final PostRefreshTokenRequest? object =
          PostRefreshTokenRequest.fromJson(element);
      if (object is PostRefreshTokenRequest) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PostRefreshTokenRequest> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PostRefreshTokenRequest>{};
    }

    return json.entries.fold(<String, PostRefreshTokenRequest>{},
        (Map<String, PostRefreshTokenRequest> previousValue, element) {
      final PostRefreshTokenRequest? object =
          PostRefreshTokenRequest.fromJson(element.value);
      if (object is PostRefreshTokenRequest) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PostRefreshTokenRequest-objects as value to a dart map
  static Map<String, List<PostRefreshTokenRequest>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PostRefreshTokenRequest>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PostRefreshTokenRequest>>(
          key, PostRefreshTokenRequest.listFromJson(value));
    });
  }

  @override
  String toString() => 'PostRefreshTokenRequest[refreshToken=$refreshToken]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'refreshToken': refreshToken,
    };
  }
}
