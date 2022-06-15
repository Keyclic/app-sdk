//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DeviceLinksSelfIriTemplateMapping {
  /// Returns a new [DeviceLinksSelfIriTemplateMapping] instance.
  DeviceLinksSelfIriTemplateMapping({
    this.device,
  });

  /// Returns a new [DeviceLinksSelfIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DeviceLinksSelfIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceLinksSelfIriTemplateMapping(
      device: json[r'device'],
    );
  }

  String? device;

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
      List<dynamic>? json) {
    if (json == null) {
      return <DeviceLinksSelfIriTemplateMapping>[];
    }
    return json
        .map((value) {
          return DeviceLinksSelfIriTemplateMapping.fromJson(value);
        })
        .whereType<DeviceLinksSelfIriTemplateMapping>()
        .toList();
  }

  static Map<String, DeviceLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DeviceLinksSelfIriTemplateMapping>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, DeviceLinksSelfIriTemplateMapping?>(
            key, DeviceLinksSelfIriTemplateMapping.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, DeviceLinksSelfIriTemplateMapping>;
  }

  // maps a json object with a list of DeviceLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<DeviceLinksSelfIriTemplateMapping>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<DeviceLinksSelfIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json!.entries)
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
