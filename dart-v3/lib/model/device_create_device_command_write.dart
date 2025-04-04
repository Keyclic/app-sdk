//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class DeviceCreateDeviceCommandWrite {
  /// Returns a new [DeviceCreateDeviceCommandWrite] instance.
  DeviceCreateDeviceCommandWrite({
    required this.token,
    required this.platform,
  });

  /// Returns a new [DeviceCreateDeviceCommandWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DeviceCreateDeviceCommandWrite? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return DeviceCreateDeviceCommandWrite(
      token: json[r'token'],
      platform: DeviceCreateDeviceCommandWritePlatformEnum.fromJson(
          json[r'platform'])!,
    );
  }

  String token;

  DeviceCreateDeviceCommandWritePlatformEnum platform;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DeviceCreateDeviceCommandWrite &&
        other.token == token &&
        other.platform == platform;
  }

  @override
  int get hashCode => token.hashCode + platform.hashCode;

  static List<DeviceCreateDeviceCommandWrite> listFromJson(Iterable? json) {
    if (json == null) {
      return <DeviceCreateDeviceCommandWrite>[];
    }

    return json.fold(<DeviceCreateDeviceCommandWrite>[],
        (List<DeviceCreateDeviceCommandWrite> previousValue, element) {
      final DeviceCreateDeviceCommandWrite? object =
          DeviceCreateDeviceCommandWrite.fromJson(element);
      if (object is DeviceCreateDeviceCommandWrite) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DeviceCreateDeviceCommandWrite> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DeviceCreateDeviceCommandWrite>{};
    }

    return json.entries.fold(<String, DeviceCreateDeviceCommandWrite>{},
        (Map<String, DeviceCreateDeviceCommandWrite> previousValue, element) {
      final DeviceCreateDeviceCommandWrite? object =
          DeviceCreateDeviceCommandWrite.fromJson(element.value);
      if (object is DeviceCreateDeviceCommandWrite) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DeviceCreateDeviceCommandWrite-objects as value to a dart map
  static Map<String, List<DeviceCreateDeviceCommandWrite>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DeviceCreateDeviceCommandWrite>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DeviceCreateDeviceCommandWrite>>(
          key, DeviceCreateDeviceCommandWrite.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'DeviceCreateDeviceCommandWrite[token=$token, platform=$platform]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'token': token,
      r'platform': platform,
    };
  }
}

class DeviceCreateDeviceCommandWritePlatformEnum {
  /// Instantiate a new enum with the provided [value].
  const DeviceCreateDeviceCommandWritePlatformEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const android =
      DeviceCreateDeviceCommandWritePlatformEnum._(r'android');
  static const ios = DeviceCreateDeviceCommandWritePlatformEnum._(r'ios');

  /// List of all possible values in this [enum][DeviceCreateDeviceCommandWritePlatformEnum].
  static const values = <DeviceCreateDeviceCommandWritePlatformEnum>[
    android,
    ios,
  ];

  static DeviceCreateDeviceCommandWritePlatformEnum? fromJson(dynamic value) =>
      DeviceCreateDeviceCommandWritePlatformEnumTypeTransformer().decode(value);

  static List<DeviceCreateDeviceCommandWritePlatformEnum> listFromJson(
      List<dynamic> json) {
    return json
        .map((value) {
          return DeviceCreateDeviceCommandWritePlatformEnum.fromJson(value);
        })
        .whereType<DeviceCreateDeviceCommandWritePlatformEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [DeviceCreateDeviceCommandWritePlatformEnum] to String,
/// and [decode] dynamic data back to [DeviceCreateDeviceCommandWritePlatformEnum].
class DeviceCreateDeviceCommandWritePlatformEnumTypeTransformer {
  const DeviceCreateDeviceCommandWritePlatformEnumTypeTransformer._();

  factory DeviceCreateDeviceCommandWritePlatformEnumTypeTransformer() =>
      _instance ??=
          DeviceCreateDeviceCommandWritePlatformEnumTypeTransformer._();

  String encode(DeviceCreateDeviceCommandWritePlatformEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DeviceCreateDeviceCommandWritePlatformEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeviceCreateDeviceCommandWritePlatformEnum? decode(dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'android':
        return DeviceCreateDeviceCommandWritePlatformEnum.android;
      case r'ios':
        return DeviceCreateDeviceCommandWritePlatformEnum.ios;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [DeviceCreateDeviceCommandWritePlatformEnumTypeTransformer] instance.
  static DeviceCreateDeviceCommandWritePlatformEnumTypeTransformer? _instance;
}
