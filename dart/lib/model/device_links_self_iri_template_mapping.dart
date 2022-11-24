//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class DeviceLinksSelfIriTemplateMapping {
  /// Returns a new [DeviceLinksSelfIriTemplateMapping] instance.
  DeviceLinksSelfIriTemplateMapping({
    this.device,
  });

  /// Returns a new [DeviceLinksSelfIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory DeviceLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DeviceLinksSelfIriTemplateMapping(
      device: json[r'device'],
    );
  }

  String device;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DeviceLinksSelfIriTemplateMapping && other.device == device;
  }

  @override
  int get hashCode => (device == null ? 0 : device.hashCode);

  static List<DeviceLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return <DeviceLinksSelfIriTemplateMapping>[
      if (json is List)
        for (dynamic value in json)
          DeviceLinksSelfIriTemplateMapping.fromJson(value),
    ];
  }

  static Map<String, DeviceLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return <String, DeviceLinksSelfIriTemplateMapping>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: DeviceLinksSelfIriTemplateMapping.fromJson(entry.value),
    };
  }

  // maps a json object with a list of DeviceLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<DeviceLinksSelfIriTemplateMapping>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<DeviceLinksSelfIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              DeviceLinksSelfIriTemplateMapping.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'DeviceLinksSelfIriTemplateMapping[device=$device]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (device != null) r'device': device,
    };
  }
}
