//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PlaceEmbeddedTargetGroupsInner {
  /// Returns a new [PlaceEmbeddedTargetGroupsInner] instance.
  PlaceEmbeddedTargetGroupsInner({
    this.id,
    this.name,
    this.description,
  });

  /// Returns a new [PlaceEmbeddedTargetGroupsInner] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PlaceEmbeddedTargetGroupsInner.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceEmbeddedTargetGroupsInner(
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

    return other is PlaceEmbeddedTargetGroupsInner &&
        other.id == id &&
        other.name == name &&
        other.description == description;
  }

  @override
  int get hashCode =>
      (id == null ? 0 : id.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (description == null ? 0 : description.hashCode);

  static List<PlaceEmbeddedTargetGroupsInner> listFromJson(List<dynamic> json) {
    return <PlaceEmbeddedTargetGroupsInner>[
      if (json is List)
        for (dynamic value in json)
          PlaceEmbeddedTargetGroupsInner.fromJson(value),
    ];
  }

  static Map<String, PlaceEmbeddedTargetGroupsInner> mapFromJson(
      Map<String, dynamic> json) {
    return <String, PlaceEmbeddedTargetGroupsInner>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlaceEmbeddedTargetGroupsInner.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PlaceEmbeddedTargetGroupsInner-objects as value to a dart map
  static Map<String, List<PlaceEmbeddedTargetGroupsInner>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PlaceEmbeddedTargetGroupsInner>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlaceEmbeddedTargetGroupsInner.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'PlaceEmbeddedTargetGroupsInner[id=$id, name=$name, description=$description]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) r'id': id,
      if (name != null) r'name': name,
      if (description != null) r'description': description,
    };
  }
}
