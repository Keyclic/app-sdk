//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class DeviceLinksSelf {
  /// Returns a new [DeviceLinksSelf] instance.
  DeviceLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [DeviceLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory DeviceLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DeviceLinksSelf(
      href: json[r'href'],
      iriTemplate: DeviceLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given device.
  String href;

  DeviceLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DeviceLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<DeviceLinksSelf> listFromJson(List<dynamic> json) {
    return <DeviceLinksSelf>[
      if (json is List)
        for (dynamic value in json) DeviceLinksSelf.fromJson(value),
    ];
  }

  static Map<String, DeviceLinksSelf> mapFromJson(Map<String, dynamic> json) {
    return <String, DeviceLinksSelf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: DeviceLinksSelf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of DeviceLinksSelf-objects as value to a dart map
  static Map<String, List<DeviceLinksSelf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<DeviceLinksSelf>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: DeviceLinksSelf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'DeviceLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
