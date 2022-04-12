//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DeviceLinksPerson {
  /// Returns a new [DeviceLinksPerson] instance.
  DeviceLinksPerson({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [DeviceLinksPerson] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DeviceLinksPerson? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceLinksPerson(
      href: json[r'href'],
      iriTemplate: DeviceLinksPersonIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the person associated to the given device.
  String? href;

  DeviceLinksPersonIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DeviceLinksPerson &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<DeviceLinksPerson> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <DeviceLinksPerson>[];
    }
    return json
        .map((value) {
          return DeviceLinksPerson.fromJson(value);
        })
        .whereType<DeviceLinksPerson>()
        .toList();
  }

  static Map<String, DeviceLinksPerson> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DeviceLinksPerson>{};
    }

    final map = json.map((key, value) => MapEntry<String, DeviceLinksPerson?>(
        key, DeviceLinksPerson.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, DeviceLinksPerson>;
  }

  // maps a json object with a list of DeviceLinksPerson-objects as value to a dart map
  static Map<String, List<DeviceLinksPerson>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<DeviceLinksPerson>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: DeviceLinksPerson.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'DeviceLinksPerson[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
