//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DeviceLinks {
  /// Returns a new [DeviceLinks] instance.
  DeviceLinks({
    this.person,
    this.self,
  });

  /// Returns a new [DeviceLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DeviceLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return DeviceLinks(
      person: DeviceLinksPerson.fromJson(json[r'person']),
      self: DeviceLinksSelf.fromJson(json[r'self']),
    );
  }

  DeviceLinksPerson? person;

  DeviceLinksSelf? self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DeviceLinks && other.person == person && other.self == self;
  }

  @override
  int get hashCode =>
      (person == null ? 0 : person.hashCode) +
      (self == null ? 0 : self.hashCode);

  static List<DeviceLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <DeviceLinks>[];
    }

    return json.fold(<DeviceLinks>[],
        (List<DeviceLinks> previousValue, element) {
      final DeviceLinks? object = DeviceLinks.fromJson(element);
      if (object is DeviceLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DeviceLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DeviceLinks>{};
    }

    return json.entries.fold(<String, DeviceLinks>{},
        (Map<String, DeviceLinks> previousValue, element) {
      final DeviceLinks? object = DeviceLinks.fromJson(element.value);
      if (object is DeviceLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DeviceLinks-objects as value to a dart map
  static Map<String, List<DeviceLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DeviceLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DeviceLinks>>(
          key, DeviceLinks.listFromJson(value));
    });
  }

  @override
  String toString() => 'DeviceLinks[person=$person, self=$self]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^person\.').hasMatch(key)))
        r'person': person?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^person\.'))) {
            previousValue.add(element.split(RegExp(r'^person\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^self\.').hasMatch(key)))
        r'self': self?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^self\.'))) {
            previousValue.add(element.split(RegExp(r'^self\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
