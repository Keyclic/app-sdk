//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DeviceData {
  /// Returns a new [DeviceData] instance.
  DeviceData({
    required this.token,
    required this.platform,
    required this.person,
  });

  /// Returns a new [DeviceData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DeviceData? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return DeviceData(
      token: json[r'token'],
      platform: DeviceDataPlatformEnum.fromJson(json[r'platform'])!,
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
  int get hashCode => token.hashCode + platform.hashCode + person.hashCode;

  static List<DeviceData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <DeviceData>[];
    }

    return json.fold(<DeviceData>[], (List<DeviceData> previousValue, element) {
      final DeviceData? object = DeviceData.fromJson(element);
      if (object is DeviceData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DeviceData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DeviceData>{};
    }

    return json.entries.fold(<String, DeviceData>{},
        (Map<String, DeviceData> previousValue, element) {
      final DeviceData? object = DeviceData.fromJson(element.value);
      if (object is DeviceData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DeviceData-objects as value to a dart map
  static Map<String, List<DeviceData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DeviceData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DeviceData>>(
          key, DeviceData.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'DeviceData[token=$token, platform=$platform, person=$person]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
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

  static DeviceDataPlatformEnum? fromJson(dynamic value) =>
      DeviceDataPlatformEnumTypeTransformer().decode(value);

  static List<DeviceDataPlatformEnum> listFromJson(List<dynamic> json) {
    return json
        .map((value) {
          return DeviceDataPlatformEnum.fromJson(value);
        })
        .whereType<DeviceDataPlatformEnum>()
        .toList();
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
  DeviceDataPlatformEnum? decode(dynamic data, {bool allowNull = true}) {
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
  static DeviceDataPlatformEnumTypeTransformer? _instance;
}
