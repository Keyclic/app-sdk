//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ConnectionAuthProfileRead {
  /// Returns a new [ConnectionAuthProfileRead] instance.
  ConnectionAuthProfileRead({
    this.image,
    this.text,
    this.authorizationUrl,
    this.type,
  });

  /// Returns a new [ConnectionAuthProfileRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ConnectionAuthProfileRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ConnectionAuthProfileRead(
      image: json[r'image'],
      text: json[r'text'],
      authorizationUrl: json[r'authorizationUrl'],
      type: ConnectionAuthProfileReadTypeEnum.fromJson(json[r'type']),
    );
  }

  String? image;

  String? text;

  final String? authorizationUrl;

  final ConnectionAuthProfileReadTypeEnum? type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ConnectionAuthProfileRead &&
        other.image == image &&
        other.text == text &&
        other.authorizationUrl == authorizationUrl &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (image == null ? 0 : image.hashCode) +
      (text == null ? 0 : text.hashCode) +
      (authorizationUrl == null ? 0 : authorizationUrl.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<ConnectionAuthProfileRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <ConnectionAuthProfileRead>[];
    }

    return json.fold(<ConnectionAuthProfileRead>[],
        (List<ConnectionAuthProfileRead> previousValue, element) {
      final ConnectionAuthProfileRead? object =
          ConnectionAuthProfileRead.fromJson(element);
      if (object is ConnectionAuthProfileRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ConnectionAuthProfileRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ConnectionAuthProfileRead>{};
    }

    return json.entries.fold(<String, ConnectionAuthProfileRead>{},
        (Map<String, ConnectionAuthProfileRead> previousValue, element) {
      final ConnectionAuthProfileRead? object =
          ConnectionAuthProfileRead.fromJson(element.value);
      if (object is ConnectionAuthProfileRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ConnectionAuthProfileRead-objects as value to a dart map
  static Map<String, List<ConnectionAuthProfileRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ConnectionAuthProfileRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ConnectionAuthProfileRead>>(
          key, ConnectionAuthProfileRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ConnectionAuthProfileRead[image=$image, text=$text, authorizationUrl=$authorizationUrl, type=$type]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'image')) r'image': image,
      if (keys == null || keys.contains(r'text')) r'text': text,
      if (keys == null || keys.contains(r'authorizationUrl'))
        r'authorizationUrl': authorizationUrl,
      if (keys == null || keys.contains(r'type')) r'type': type,
    };
  }
}

class ConnectionAuthProfileReadTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ConnectionAuthProfileReadTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const enterprise = ConnectionAuthProfileReadTypeEnum._(r'enterprise');
  static const password = ConnectionAuthProfileReadTypeEnum._(r'password');

  /// List of all possible values in this [enum][ConnectionAuthProfileReadTypeEnum].
  static const values = <ConnectionAuthProfileReadTypeEnum>[
    enterprise,
    password,
  ];

  static ConnectionAuthProfileReadTypeEnum? fromJson(dynamic value) =>
      ConnectionAuthProfileReadTypeEnumTypeTransformer().decode(value);

  static List<ConnectionAuthProfileReadTypeEnum> listFromJson(
      List<dynamic> json) {
    return json
        .map((value) {
          return ConnectionAuthProfileReadTypeEnum.fromJson(value);
        })
        .whereType<ConnectionAuthProfileReadTypeEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [ConnectionAuthProfileReadTypeEnum] to String,
/// and [decode] dynamic data back to [ConnectionAuthProfileReadTypeEnum].
class ConnectionAuthProfileReadTypeEnumTypeTransformer {
  const ConnectionAuthProfileReadTypeEnumTypeTransformer._();

  factory ConnectionAuthProfileReadTypeEnumTypeTransformer() =>
      _instance ??= ConnectionAuthProfileReadTypeEnumTypeTransformer._();

  String encode(ConnectionAuthProfileReadTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConnectionAuthProfileReadTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConnectionAuthProfileReadTypeEnum? decode(dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'enterprise':
        return ConnectionAuthProfileReadTypeEnum.enterprise;
      case r'password':
        return ConnectionAuthProfileReadTypeEnum.password;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ConnectionAuthProfileReadTypeEnumTypeTransformer] instance.
  static ConnectionAuthProfileReadTypeEnumTypeTransformer? _instance;
}
