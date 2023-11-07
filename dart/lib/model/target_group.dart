//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class TargetGroup {
  /// Returns a new [TargetGroup] instance.
  TargetGroup({
    this.id,
    this.name,
    this.description,
  });

  /// Returns a new [TargetGroup] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TargetGroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TargetGroup(
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

    return other is TargetGroup &&
        other.id == id &&
        other.name == name &&
        other.description == description;
  }

  @override
  int get hashCode =>
      (id == null ? 0 : id.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (description == null ? 0 : description.hashCode);

  static List<TargetGroup> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <TargetGroup>[];
    }

    return json.fold(<TargetGroup>[],
        (List<TargetGroup> previousValue, element) {
      final TargetGroup? object = TargetGroup.fromJson(element);
      if (object is TargetGroup) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, TargetGroup> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, TargetGroup>{};
    }

    return json.entries.fold(<String, TargetGroup>{},
        (Map<String, TargetGroup> previousValue, element) {
      final TargetGroup? object = TargetGroup.fromJson(element.value);
      if (object is TargetGroup) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of TargetGroup-objects as value to a dart map
  static Map<String, List<TargetGroup>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<TargetGroup>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<TargetGroup>>(
          key, TargetGroup.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'TargetGroup[id=$id, name=$name, description=$description]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && id != null) || (keys?.contains(r'id') ?? false))
        r'id': id,
      if ((keys == null && name != null) || (keys?.contains(r'name') ?? false))
        r'name': name,
      if ((keys == null && description != null) ||
          (keys?.contains(r'description') ?? false))
        r'description': description,
    };
  }
}
