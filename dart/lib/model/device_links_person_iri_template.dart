//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DeviceLinksPersonIriTemplate {
  /// Returns a new [DeviceLinksPersonIriTemplate] instance.
  DeviceLinksPersonIriTemplate({
    this.mapping,
  });

  /// Returns a new [DeviceLinksPersonIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DeviceLinksPersonIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceLinksPersonIriTemplate(
      mapping: ContributionLinksContributorIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  ContributionLinksContributorIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DeviceLinksPersonIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<DeviceLinksPersonIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <DeviceLinksPersonIriTemplate>[];
    }

    return json.fold(<DeviceLinksPersonIriTemplate>[],
        (List<DeviceLinksPersonIriTemplate> previousValue, element) {
      final DeviceLinksPersonIriTemplate? object =
          DeviceLinksPersonIriTemplate.fromJson(element);
      if (object is DeviceLinksPersonIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DeviceLinksPersonIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DeviceLinksPersonIriTemplate>{};
    }

    return json.entries.fold(<String, DeviceLinksPersonIriTemplate>{},
        (Map<String, DeviceLinksPersonIriTemplate> previousValue, element) {
      final DeviceLinksPersonIriTemplate? object =
          DeviceLinksPersonIriTemplate.fromJson(element.value);
      if (object is DeviceLinksPersonIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DeviceLinksPersonIriTemplate-objects as value to a dart map
  static Map<String, List<DeviceLinksPersonIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DeviceLinksPersonIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DeviceLinksPersonIriTemplate>>(
          key, DeviceLinksPersonIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'DeviceLinksPersonIriTemplate[mapping=$mapping]';

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
