//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetAuthTokenRequest {
  /// Returns a new [GetAuthTokenRequest] instance.
  GetAuthTokenRequest({
    required this.grantType,
    required this.idToken,
  });

  /// Returns a new [GetAuthTokenRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetAuthTokenRequest? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GetAuthTokenRequest(
      grantType: GetAuthTokenRequestGrantTypeEnum.fromJson(json[r'grantType'])!,
      idToken: json[r'idToken'],
    );
  }

  GetAuthTokenRequestGrantTypeEnum grantType;

  String idToken;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetAuthTokenRequest &&
        other.grantType == grantType &&
        other.idToken == idToken;
  }

  @override
  int get hashCode => grantType.hashCode + idToken.hashCode;

  static List<GetAuthTokenRequest> listFromJson(Iterable? json) {
    if (json == null) {
      return <GetAuthTokenRequest>[];
    }

    return json.fold(<GetAuthTokenRequest>[],
        (List<GetAuthTokenRequest> previousValue, element) {
      final GetAuthTokenRequest? object = GetAuthTokenRequest.fromJson(element);
      if (object is GetAuthTokenRequest) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetAuthTokenRequest> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetAuthTokenRequest>{};
    }

    return json.entries.fold(<String, GetAuthTokenRequest>{},
        (Map<String, GetAuthTokenRequest> previousValue, element) {
      final GetAuthTokenRequest? object =
          GetAuthTokenRequest.fromJson(element.value);
      if (object is GetAuthTokenRequest) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetAuthTokenRequest-objects as value to a dart map
  static Map<String, List<GetAuthTokenRequest>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetAuthTokenRequest>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetAuthTokenRequest>>(
          key, GetAuthTokenRequest.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GetAuthTokenRequest[grantType=$grantType, idToken=$idToken]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'grantType': grantType,
      r'idToken': idToken,
    };
  }
}

class GetAuthTokenRequestGrantTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const GetAuthTokenRequestGrantTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const externalAuth =
      GetAuthTokenRequestGrantTypeEnum._(r'external_auth');

  /// List of all possible values in this [enum][GetAuthTokenRequestGrantTypeEnum].
  static const values = <GetAuthTokenRequestGrantTypeEnum>[
    externalAuth,
  ];

  static GetAuthTokenRequestGrantTypeEnum? fromJson(dynamic value) =>
      GetAuthTokenRequestGrantTypeEnumTypeTransformer().decode(value);

  static List<GetAuthTokenRequestGrantTypeEnum> listFromJson(
      List<dynamic> json) {
    return json
        .map((value) {
          return GetAuthTokenRequestGrantTypeEnum.fromJson(value);
        })
        .whereType<GetAuthTokenRequestGrantTypeEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [GetAuthTokenRequestGrantTypeEnum] to String,
/// and [decode] dynamic data back to [GetAuthTokenRequestGrantTypeEnum].
class GetAuthTokenRequestGrantTypeEnumTypeTransformer {
  const GetAuthTokenRequestGrantTypeEnumTypeTransformer._();

  factory GetAuthTokenRequestGrantTypeEnumTypeTransformer() =>
      _instance ??= GetAuthTokenRequestGrantTypeEnumTypeTransformer._();

  String encode(GetAuthTokenRequestGrantTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GetAuthTokenRequestGrantTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GetAuthTokenRequestGrantTypeEnum? decode(dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'external_auth':
        return GetAuthTokenRequestGrantTypeEnum.externalAuth;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [GetAuthTokenRequestGrantTypeEnumTypeTransformer] instance.
  static GetAuthTokenRequestGrantTypeEnumTypeTransformer? _instance;
}
