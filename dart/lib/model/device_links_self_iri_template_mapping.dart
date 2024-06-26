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
  static DeviceLinksSelfIriTemplateMapping? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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

  static List<DeviceLinksSelfIriTemplateMapping> listFromJson(Iterable? json) {
    if (json == null) {
      return <DeviceLinksSelfIriTemplateMapping>[];
    }

    return json.fold(<DeviceLinksSelfIriTemplateMapping>[],
        (List<DeviceLinksSelfIriTemplateMapping> previousValue, element) {
      final DeviceLinksSelfIriTemplateMapping? object =
          DeviceLinksSelfIriTemplateMapping.fromJson(element);
      if (object is DeviceLinksSelfIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DeviceLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DeviceLinksSelfIriTemplateMapping>{};
    }

    return json.entries.fold(<String, DeviceLinksSelfIriTemplateMapping>{},
        (Map<String, DeviceLinksSelfIriTemplateMapping> previousValue,
            element) {
      final DeviceLinksSelfIriTemplateMapping? object =
          DeviceLinksSelfIriTemplateMapping.fromJson(element.value);
      if (object is DeviceLinksSelfIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DeviceLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<DeviceLinksSelfIriTemplateMapping>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DeviceLinksSelfIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DeviceLinksSelfIriTemplateMapping>>(
          key, DeviceLinksSelfIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() => 'DeviceLinksSelfIriTemplateMapping[device=$device]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'device')) r'device': device,
    };
  }
}
