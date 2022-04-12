//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class DeviceData {
  /// Returns a new [DeviceData] instance.
  DeviceData({
    @required this.token,
    @required this.platform,
    @required this.person,
  });

  /// Returns a new [DeviceData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory DeviceData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DeviceData(
      token: json[r'token'],
      platform: DeviceDataPlatformEnum.fromJson(json[r'platform']),
      person: json[r'person'],
    );
  }

  String token;

  DeviceDataPlatformEnum platform;

  String person;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DeviceData &&
        other.token == token &&
        other.platform == platform &&
        other.person == person;
  }

  @override
  int get hashCode =>
      (token == null ? 0 : token.hashCode) +
      (platform == null ? 0 : platform.hashCode) +
      (person == null ? 0 : person.hashCode);

  static List<DeviceData> listFromJson(List<dynamic> json) {
    return <DeviceData>[
      if (json is List)
        for (dynamic value in json) DeviceData.fromJson(value),
    ];
  }

  static Map<String, DeviceData> mapFromJson(Map<String, dynamic> json) {
    return <String, DeviceData>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: DeviceData.fromJson(entry.value),
    };
  }

  // maps a json object with a list of DeviceData-objects as value to a dart map
  static Map<String, List<DeviceData>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<DeviceData>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: DeviceData.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'DeviceData[token=$token, platform=$platform, person=$person]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'token': token,
      r'platform': platform,
      r'person': person,
    };
  }
}

class DeviceDataPlatformEnum {
  /// Instantiate a new enum with the provided [value].
  const DeviceDataPlatformEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const android = DeviceDataPlatformEnum._(r'android');
  static const ios = DeviceDataPlatformEnum._(r'ios');

  /// List of all possible values in this [enum][DeviceDataPlatformEnum].
  static const values = <DeviceDataPlatformEnum>[
    android,
    ios,
  ];

  static DeviceDataPlatformEnum fromJson(dynamic value) =>
      DeviceDataPlatformEnumTypeTransformer().decode(value);

  static List<DeviceDataPlatformEnum> listFromJson(List<dynamic> json) {
    return <DeviceDataPlatformEnum>[
      if (json is List)
        for (dynamic value in json) DeviceDataPlatformEnum.fromJson(value),
    ];
  }
}

/// Transformation class that can [encode] an instance of [DeviceDataPlatformEnum] to String,
/// and [decode] dynamic data back to [DeviceDataPlatformEnum].
class DeviceDataPlatformEnumTypeTransformer {
  const DeviceDataPlatformEnumTypeTransformer._();

  factory DeviceDataPlatformEnumTypeTransformer() =>
      _instance ??= DeviceDataPlatformEnumTypeTransformer._();

  String encode(DeviceDataPlatformEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DeviceDataPlatformEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeviceDataPlatformEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'android':
        return DeviceDataPlatformEnum.android;
      case r'ios':
        return DeviceDataPlatformEnum.ios;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [DeviceDataPlatformEnumTypeTransformer] instance.
  static DeviceDataPlatformEnumTypeTransformer _instance;
}
