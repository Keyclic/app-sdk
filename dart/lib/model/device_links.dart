//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class DeviceLinks {
  /// Returns a new [DeviceLinks] instance.
  DeviceLinks({
    this.person,
    this.self,
  });

  /// Returns a new [DeviceLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory DeviceLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DeviceLinks(
      person: DeviceLinksPerson.fromJson(json[r'person']),
      self: DeviceLinksSelf.fromJson(json[r'self']),
    );
  }

  DeviceLinksPerson person;

  DeviceLinksSelf self;

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

  static List<DeviceLinks> listFromJson(List<dynamic> json) {
    return <DeviceLinks>[
      if (json is List)
        for (dynamic value in json) DeviceLinks.fromJson(value),
    ];
  }

  static Map<String, DeviceLinks> mapFromJson(Map<String, dynamic> json) {
    return <String, DeviceLinks>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: DeviceLinks.fromJson(entry.value),
    };
  }

  // maps a json object with a list of DeviceLinks-objects as value to a dart map
  static Map<String, List<DeviceLinks>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<DeviceLinks>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: DeviceLinks.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'DeviceLinks[person=$person, self=$self]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (person != null) r'person': person,
      if (self != null) r'self': self,
    };
  }
}
