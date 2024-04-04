//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DeviceLinksSelfIriTemplate {
  /// Returns a new [DeviceLinksSelfIriTemplate] instance.
  DeviceLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [DeviceLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DeviceLinksSelfIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return DeviceLinksSelfIriTemplate(
      mapping: DeviceLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  DeviceLinksSelfIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DeviceLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<DeviceLinksSelfIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <DeviceLinksSelfIriTemplate>[];
    }

    return json.fold(<DeviceLinksSelfIriTemplate>[],
        (List<DeviceLinksSelfIriTemplate> previousValue, element) {
      final DeviceLinksSelfIriTemplate? object =
          DeviceLinksSelfIriTemplate.fromJson(element);
      if (object is DeviceLinksSelfIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DeviceLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DeviceLinksSelfIriTemplate>{};
    }

    return json.entries.fold(<String, DeviceLinksSelfIriTemplate>{},
        (Map<String, DeviceLinksSelfIriTemplate> previousValue, element) {
      final DeviceLinksSelfIriTemplate? object =
          DeviceLinksSelfIriTemplate.fromJson(element.value);
      if (object is DeviceLinksSelfIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DeviceLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<DeviceLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DeviceLinksSelfIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DeviceLinksSelfIriTemplate>>(
          key, DeviceLinksSelfIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'DeviceLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^mapping\.').hasMatch(key)))
        r'mapping': mapping?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^mapping\.'))) {
            previousValue.add(element.split(RegExp(r'^mapping\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
