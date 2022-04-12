//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PlaceEmbeddedTargetGroups {
  /// Returns a new [PlaceEmbeddedTargetGroups] instance.
  PlaceEmbeddedTargetGroups({
    this.id,
    this.name,
    this.description,
  });

  /// Returns a new [PlaceEmbeddedTargetGroups] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PlaceEmbeddedTargetGroups.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceEmbeddedTargetGroups(
      id: json[r'id'],
      name: json[r'name'],
      description: json[r'description'],
    );
  }

  String id;

  String name;

  String description;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceEmbeddedTargetGroups &&
        other.id == id &&
        other.name == name &&
        other.description == description;
  }

  @override
  int get hashCode =>
      (id == null ? 0 : id.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (description == null ? 0 : description.hashCode);

  static List<PlaceEmbeddedTargetGroups> listFromJson(List<dynamic> json) {
    return <PlaceEmbeddedTargetGroups>[
      if (json is List)
        for (dynamic value in json) PlaceEmbeddedTargetGroups.fromJson(value),
    ];
  }

  static Map<String, PlaceEmbeddedTargetGroups> mapFromJson(
      Map<String, dynamic> json) {
    return <String, PlaceEmbeddedTargetGroups>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlaceEmbeddedTargetGroups.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PlaceEmbeddedTargetGroups-objects as value to a dart map
  static Map<String, List<PlaceEmbeddedTargetGroups>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PlaceEmbeddedTargetGroups>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlaceEmbeddedTargetGroups.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'PlaceEmbeddedTargetGroups[id=$id, name=$name, description=$description]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) r'id': id,
      if (name != null) r'name': name,
      if (description != null) r'description': description,
    };
  }
}
