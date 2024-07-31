//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class NodeRead {
  /// Returns a new [NodeRead] instance.
  NodeRead({
    this.id,
    this.name,
  });

  /// Returns a new [NodeRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static NodeRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return NodeRead(
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

    return other is NodeRead && other.id == id && other.name == name;
  }

  @override
  int get hashCode =>
      (id == null ? 0 : id.hashCode) + (name == null ? 0 : name.hashCode);

  static List<NodeRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <NodeRead>[];
    }

    return json.fold(<NodeRead>[], (List<NodeRead> previousValue, element) {
      final NodeRead? object = NodeRead.fromJson(element);
      if (object is NodeRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, NodeRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, NodeRead>{};
    }

    return json.entries.fold(<String, NodeRead>{},
        (Map<String, NodeRead> previousValue, element) {
      final NodeRead? object = NodeRead.fromJson(element.value);
      if (object is NodeRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of NodeRead-objects as value to a dart map
  static Map<String, List<NodeRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<NodeRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<NodeRead>>(
          key, NodeRead.listFromJson(value));
    });
  }

  @override
  String toString() => 'NodeRead[id=$id, name=$name]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'name')) r'name': name,
    };
  }
}
