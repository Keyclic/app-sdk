//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class DeviceJsonhalReadLinks {
  /// Returns a new [DeviceJsonhalReadLinks] instance.
  DeviceJsonhalReadLinks({
    this.self,
    this.person,
  });

  /// Returns a new [DeviceJsonhalReadLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DeviceJsonhalReadLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return DeviceJsonhalReadLinks(
      self: GetPlaceCollection200ResponseLinksSelf.fromJson(json[r'self']),
      person: GetPlaceCollection200ResponseLinksSelf.fromJson(json[r'person']),
    );
  }

  GetPlaceCollection200ResponseLinksSelf? self;

  GetPlaceCollection200ResponseLinksSelf? person;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DeviceJsonhalReadLinks &&
        other.self == self &&
        other.person == person;
  }

  @override
  int get hashCode =>
      (self == null ? 0 : self.hashCode) +
      (person == null ? 0 : person.hashCode);

  static List<DeviceJsonhalReadLinks> listFromJson(Iterable? json) {
    if (json == null) {
      return <DeviceJsonhalReadLinks>[];
    }

    return json.fold(<DeviceJsonhalReadLinks>[],
        (List<DeviceJsonhalReadLinks> previousValue, element) {
      final DeviceJsonhalReadLinks? object =
          DeviceJsonhalReadLinks.fromJson(element);
      if (object is DeviceJsonhalReadLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DeviceJsonhalReadLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DeviceJsonhalReadLinks>{};
    }

    return json.entries.fold(<String, DeviceJsonhalReadLinks>{},
        (Map<String, DeviceJsonhalReadLinks> previousValue, element) {
      final DeviceJsonhalReadLinks? object =
          DeviceJsonhalReadLinks.fromJson(element.value);
      if (object is DeviceJsonhalReadLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DeviceJsonhalReadLinks-objects as value to a dart map
  static Map<String, List<DeviceJsonhalReadLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DeviceJsonhalReadLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DeviceJsonhalReadLinks>>(
          key, DeviceJsonhalReadLinks.listFromJson(value));
    });
  }

  @override
  String toString() => 'DeviceJsonhalReadLinks[self=$self, person=$person]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^self\.').hasMatch(key)))
        r'self': self?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^self\.'))) {
            previousValue.add(element.split(RegExp(r'^self\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^person\.').hasMatch(key)))
        r'person': person?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^person\.'))) {
            previousValue.add(element.split(RegExp(r'^person\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
