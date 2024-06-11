//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ConnectionJsonhalAuthProfileRead {
  /// Returns a new [ConnectionJsonhalAuthProfileRead] instance.
  ConnectionJsonhalAuthProfileRead({
    this.links,
    this.image,
    this.text,
    this.authorizationUrl,
    this.type,
  });

  /// Returns a new [ConnectionJsonhalAuthProfileRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ConnectionJsonhalAuthProfileRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ConnectionJsonhalAuthProfileRead(
      links: AssetTypeJsonhalReadLinks.fromJson(json[r'_links']),
      image: json[r'image'],
      text: json[r'text'],
      authorizationUrl: json[r'authorizationUrl'],
      type: ConnectionJsonhalAuthProfileReadTypeEnum.fromJson(json[r'type']),
    );
  }

  AssetTypeJsonhalReadLinks? links;

  String? image;

  String? text;

  final String? authorizationUrl;

  final ConnectionJsonhalAuthProfileReadTypeEnum? type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ConnectionJsonhalAuthProfileRead &&
        other.links == links &&
        other.image == image &&
        other.text == text &&
        other.authorizationUrl == authorizationUrl &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (image == null ? 0 : image.hashCode) +
      (text == null ? 0 : text.hashCode) +
      (authorizationUrl == null ? 0 : authorizationUrl.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<ConnectionJsonhalAuthProfileRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <ConnectionJsonhalAuthProfileRead>[];
    }

    return json.fold(<ConnectionJsonhalAuthProfileRead>[],
        (List<ConnectionJsonhalAuthProfileRead> previousValue, element) {
      final ConnectionJsonhalAuthProfileRead? object =
          ConnectionJsonhalAuthProfileRead.fromJson(element);
      if (object is ConnectionJsonhalAuthProfileRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ConnectionJsonhalAuthProfileRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ConnectionJsonhalAuthProfileRead>{};
    }

    return json.entries.fold(<String, ConnectionJsonhalAuthProfileRead>{},
        (Map<String, ConnectionJsonhalAuthProfileRead> previousValue, element) {
      final ConnectionJsonhalAuthProfileRead? object =
          ConnectionJsonhalAuthProfileRead.fromJson(element.value);
      if (object is ConnectionJsonhalAuthProfileRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ConnectionJsonhalAuthProfileRead-objects as value to a dart map
  static Map<String, List<ConnectionJsonhalAuthProfileRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ConnectionJsonhalAuthProfileRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ConnectionJsonhalAuthProfileRead>>(
          key, ConnectionJsonhalAuthProfileRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ConnectionJsonhalAuthProfileRead[links=$links, image=$image, text=$text, authorizationUrl=$authorizationUrl, type=$type]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'image')) r'image': image,
      if (keys == null || keys.contains(r'text')) r'text': text,
      if (keys == null || keys.contains(r'authorizationUrl'))
        r'authorizationUrl': authorizationUrl,
      if (keys == null || keys.contains(r'type')) r'type': type,
    };
  }
}

class ConnectionJsonhalAuthProfileReadTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ConnectionJsonhalAuthProfileReadTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const enterprise =
      ConnectionJsonhalAuthProfileReadTypeEnum._(r'enterprise');
  static const password =
      ConnectionJsonhalAuthProfileReadTypeEnum._(r'password');

  /// List of all possible values in this [enum][ConnectionJsonhalAuthProfileReadTypeEnum].
  static const values = <ConnectionJsonhalAuthProfileReadTypeEnum>[
    enterprise,
    password,
  ];

  static ConnectionJsonhalAuthProfileReadTypeEnum? fromJson(dynamic value) =>
      ConnectionJsonhalAuthProfileReadTypeEnumTypeTransformer().decode(value);

  static List<ConnectionJsonhalAuthProfileReadTypeEnum> listFromJson(
      List<dynamic> json) {
    return json
        .map((value) {
          return ConnectionJsonhalAuthProfileReadTypeEnum.fromJson(value);
        })
        .whereType<ConnectionJsonhalAuthProfileReadTypeEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [ConnectionJsonhalAuthProfileReadTypeEnum] to String,
/// and [decode] dynamic data back to [ConnectionJsonhalAuthProfileReadTypeEnum].
class ConnectionJsonhalAuthProfileReadTypeEnumTypeTransformer {
  const ConnectionJsonhalAuthProfileReadTypeEnumTypeTransformer._();

  factory ConnectionJsonhalAuthProfileReadTypeEnumTypeTransformer() =>
      _instance ??= ConnectionJsonhalAuthProfileReadTypeEnumTypeTransformer._();

  String encode(ConnectionJsonhalAuthProfileReadTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConnectionJsonhalAuthProfileReadTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConnectionJsonhalAuthProfileReadTypeEnum? decode(dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'enterprise':
        return ConnectionJsonhalAuthProfileReadTypeEnum.enterprise;
      case r'password':
        return ConnectionJsonhalAuthProfileReadTypeEnum.password;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ConnectionJsonhalAuthProfileReadTypeEnumTypeTransformer] instance.
  static ConnectionJsonhalAuthProfileReadTypeEnumTypeTransformer? _instance;
}
