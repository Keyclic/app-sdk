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
    return json
        .map((value) {
          return NodePath.fromJson(value);
        })
        .whereType<NodePath>()
        .toList();
  }

  static Map<String, NodePath> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, NodePath>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, NodePath?>(key, NodePath.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, NodePath>;
  }

  // maps a json object with a list of NodePath-objects as value to a dart map
  static Map<String, List<NodePath>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<NodePath>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: NodePath.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'NodePath[id=$id, name=$name]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) r'id': id,
      if (name != null) r'name': name,
    };
  }
}
