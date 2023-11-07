//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DeviceLinksSelf {
  /// Returns a new [DeviceLinksSelf] instance.
  DeviceLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [DeviceLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DeviceLinksSelf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceLinksSelf(
      href: json[r'href'],
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : DeviceLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given device.
  String? href;

  DeviceLinksSelfIriTemplate? iriTemplate;

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

  static List<DeviceLinksSelf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <DeviceLinksSelf>[];
    }

    return json.fold(<DeviceLinksSelf>[],
        (List<DeviceLinksSelf> previousValue, element) {
      final DeviceLinksSelf? object = DeviceLinksSelf.fromJson(element);
      if (object is DeviceLinksSelf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DeviceLinksSelf> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DeviceLinksSelf>{};
    }

    return json.entries.fold(<String, DeviceLinksSelf>{},
        (Map<String, DeviceLinksSelf> previousValue, element) {
      final DeviceLinksSelf? object = DeviceLinksSelf.fromJson(element.value);
      if (object is DeviceLinksSelf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DeviceLinksSelf-objects as value to a dart map
  static Map<String, List<DeviceLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DeviceLinksSelf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DeviceLinksSelf>>(
          key, DeviceLinksSelf.listFromJson(value));
    });
  }

  @override
  String toString() => 'DeviceLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && href != null) || (keys?.contains(r'href') ?? false))
        r'href': href,
      if ((keys == null && iriTemplate != null) ||
          (keys?.contains(r'iriTemplate') ?? false))
        r'iriTemplate': iriTemplate?.toJson(),
    };
  }
}
