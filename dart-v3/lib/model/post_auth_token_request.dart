//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PostAuthTokenRequest {
  /// Returns a new [PostAuthTokenRequest] instance.
  PostAuthTokenRequest({
    this.grantType,
    this.idToken,
  });

  /// Returns a new [PostAuthTokenRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PostAuthTokenRequest? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PostAuthTokenRequest(
      grantType: PostAuthTokenRequestGrantTypeEnum.fromJson(json[r'grantType']),
      idToken: json[r'idToken'],
    );
  }

  PostAuthTokenRequestGrantTypeEnum? grantType;

  String? idToken;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PostAuthTokenRequest &&
        other.grantType == grantType &&
        other.idToken == idToken;
  }

  @override
  int get hashCode =>
      (grantType == null ? 0 : grantType.hashCode) +
      (idToken == null ? 0 : idToken.hashCode);

  static List<PostAuthTokenRequest> listFromJson(Iterable? json) {
    if (json == null) {
      return <PostAuthTokenRequest>[];
    }

    return json.fold(<PostAuthTokenRequest>[],
        (List<PostAuthTokenRequest> previousValue, element) {
      final PostAuthTokenRequest? object =
          PostAuthTokenRequest.fromJson(element);
      if (object is PostAuthTokenRequest) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PostAuthTokenRequest> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PostAuthTokenRequest>{};
    }

    return json.entries.fold(<String, PostAuthTokenRequest>{},
        (Map<String, PostAuthTokenRequest> previousValue, element) {
      final PostAuthTokenRequest? object =
          PostAuthTokenRequest.fromJson(element.value);
      if (object is PostAuthTokenRequest) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PostAuthTokenRequest-objects as value to a dart map
  static Map<String, List<PostAuthTokenRequest>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PostAuthTokenRequest>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PostAuthTokenRequest>>(
          key, PostAuthTokenRequest.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PostAuthTokenRequest[grantType=$grantType, idToken=$idToken]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'grantType')) r'grantType': grantType,
      if (keys == null || keys.contains(r'idToken')) r'idToken': idToken,
    };
  }
}

class PostAuthTokenRequestGrantTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const PostAuthTokenRequestGrantTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const externalAuth =
      PostAuthTokenRequestGrantTypeEnum._(r'external_auth');

  /// List of all possible values in this [enum][PostAuthTokenRequestGrantTypeEnum].
  static const values = <PostAuthTokenRequestGrantTypeEnum>[
    externalAuth,
  ];

  static PostAuthTokenRequestGrantTypeEnum? fromJson(dynamic value) =>
      PostAuthTokenRequestGrantTypeEnumTypeTransformer().decode(value);

  static List<PostAuthTokenRequestGrantTypeEnum> listFromJson(
      List<dynamic> json) {
    return json
        .map((value) {
          return PostAuthTokenRequestGrantTypeEnum.fromJson(value);
        })
        .whereType<PostAuthTokenRequestGrantTypeEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [PostAuthTokenRequestGrantTypeEnum] to String,
/// and [decode] dynamic data back to [PostAuthTokenRequestGrantTypeEnum].
class PostAuthTokenRequestGrantTypeEnumTypeTransformer {
  const PostAuthTokenRequestGrantTypeEnumTypeTransformer._();

  factory PostAuthTokenRequestGrantTypeEnumTypeTransformer() =>
      _instance ??= PostAuthTokenRequestGrantTypeEnumTypeTransformer._();

  String encode(PostAuthTokenRequestGrantTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PostAuthTokenRequestGrantTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PostAuthTokenRequestGrantTypeEnum? decode(dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'external_auth':
        return PostAuthTokenRequestGrantTypeEnum.externalAuth;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [PostAuthTokenRequestGrantTypeEnumTypeTransformer] instance.
  static PostAuthTokenRequestGrantTypeEnumTypeTransformer? _instance;
}
