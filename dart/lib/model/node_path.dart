//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class NodePath {
  /// Returns a new [NodePath] instance.
  NodePath({
    this.id,
    this.name,
  });

  /// Returns a new [NodePath] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static NodePath? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NodePath(
      id: json[r'id'],
      name: json[r'name'],
    );
  }

  String? id;

  String? name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is NodePath && other.id == id && other.name == name;
  }

  @override
  int get hashCode =>
      (id == null ? 0 : id.hashCode) + (name == null ? 0 : name.hashCode);

  static List<NodePath> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <NodePath>[];
    }

    return json.fold(<NodePath>[], (List<NodePath> previousValue, element) {
      final NodePath? object = NodePath.fromJson(element);
      if (object is NodePath) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, NodePath> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, NodePath>{};
    }

    return json.entries.fold(<String, NodePath>{},
        (Map<String, NodePath> previousValue, element) {
      final NodePath? object = NodePath.fromJson(element.value);
      if (object is NodePath) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of NodePath-objects as value to a dart map
  static Map<String, List<NodePath>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<NodePath>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<NodePath>>(
          key, NodePath.listFromJson(value));
    });
  }

  @override
  String toString() => 'NodePath[id=$id, name=$name]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'name')) r'name': name,
    };
  }
}
