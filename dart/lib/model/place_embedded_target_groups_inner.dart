//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

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
  static PlaceEmbeddedTargetGroupsInner? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlaceEmbeddedTargetGroupsInner(
      id: json[r'id'],
      name: json[r'name'],
      description: json[r'description'],
    );
  }

  String? id;

  String? name;

  String? description;

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

  static List<PlaceEmbeddedTargetGroupsInner> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <PlaceEmbeddedTargetGroupsInner>[];
    }

    return json.fold(<PlaceEmbeddedTargetGroupsInner>[],
        (List<PlaceEmbeddedTargetGroupsInner> previousValue, element) {
      final PlaceEmbeddedTargetGroupsInner? object =
          PlaceEmbeddedTargetGroupsInner.fromJson(element);
      if (object is PlaceEmbeddedTargetGroupsInner) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlaceEmbeddedTargetGroupsInner> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceEmbeddedTargetGroupsInner>{};
    }

    return json.entries.fold(<String, PlaceEmbeddedTargetGroupsInner>{},
        (Map<String, PlaceEmbeddedTargetGroupsInner> previousValue, element) {
      final PlaceEmbeddedTargetGroupsInner? object =
          PlaceEmbeddedTargetGroupsInner.fromJson(element.value);
      if (object is PlaceEmbeddedTargetGroupsInner) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlaceEmbeddedTargetGroupsInner-objects as value to a dart map
  static Map<String, List<PlaceEmbeddedTargetGroupsInner>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlaceEmbeddedTargetGroupsInner>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlaceEmbeddedTargetGroupsInner>>(
          key, PlaceEmbeddedTargetGroupsInner.listFromJson(value));
    });
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
