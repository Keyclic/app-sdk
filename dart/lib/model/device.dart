//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Device {
  /// Returns a new [Device] instance.
  Device({
    this.links,
    this.createdAt,
    this.id,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [Device] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Device? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime createdAt = DateTime.parse(json[r'createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime updatedAt = DateTime.parse(json[r'updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return Device(
      links: DeviceLinks.fromJson(json[r'_links']),
      createdAt: createdAt,
      id: json[r'id'],
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  DeviceLinks? links;

  final DateTime? createdAt;

  final String? id;

  String? type;

  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Device &&
        other.links == links &&
        other.createdAt == createdAt &&
        other.id == id &&
        other.type == type &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<Device> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Device>[];
    }
    return json
        .map((value) {
          return Device.fromJson(value);
        })
        .whereType<Device>()
        .toList();
  }

  static Map<String, Device> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Device>{};
    }

    final map = json.map(
        (key, value) => MapEntry<String, Device?>(key, Device.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, Device>;
  }

  // maps a json object with a list of Device-objects as value to a dart map
  static Map<String, List<Device>> mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<Device>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: Device.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'Device[links=$links, createdAt=$createdAt, id=$id, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (links != null) r'_links': links,
      if (createdAt != null) r'createdAt': createdAt!.toUtc().toIso8601String(),
      if (id != null) r'id': id,
      if (type != null) r'type': type,
      if (updatedAt != null) r'updatedAt': updatedAt!.toUtc().toIso8601String(),
    };
  }
}
