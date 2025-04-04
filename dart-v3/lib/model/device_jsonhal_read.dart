//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class DeviceJsonhalRead {
  /// Returns a new [DeviceJsonhalRead] instance.
  DeviceJsonhalRead({
    this.links,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.type,
  });

  /// Returns a new [DeviceJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DeviceJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return DeviceJsonhalRead(
      links: DeviceJsonhalReadLinks.fromJson(json[r'_links']),
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
      type: json[r'type'],
    );
  }

  DeviceJsonhalReadLinks? links;

  String? id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  final String? type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DeviceJsonhalRead &&
        other.links == links &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<DeviceJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <DeviceJsonhalRead>[];
    }

    return json.fold(<DeviceJsonhalRead>[],
        (List<DeviceJsonhalRead> previousValue, element) {
      final DeviceJsonhalRead? object = DeviceJsonhalRead.fromJson(element);
      if (object is DeviceJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DeviceJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DeviceJsonhalRead>{};
    }

    return json.entries.fold(<String, DeviceJsonhalRead>{},
        (Map<String, DeviceJsonhalRead> previousValue, element) {
      final DeviceJsonhalRead? object =
          DeviceJsonhalRead.fromJson(element.value);
      if (object is DeviceJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DeviceJsonhalRead-objects as value to a dart map
  static Map<String, List<DeviceJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DeviceJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DeviceJsonhalRead>>(
          key, DeviceJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'DeviceJsonhalRead[links=$links, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, type=$type]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'type')) r'type': type,
    };
  }
}
