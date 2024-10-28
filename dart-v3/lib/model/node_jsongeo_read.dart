//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class NodeJsongeoRead {
  /// Returns a new [NodeJsongeoRead] instance.
  NodeJsongeoRead({
    this.id,
    this.name,
  });

  /// Returns a new [NodeJsongeoRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static NodeJsongeoRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return NodeJsongeoRead(
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

    return other is NodeJsongeoRead && other.id == id && other.name == name;
  }

  @override
  int get hashCode =>
      (id == null ? 0 : id.hashCode) + (name == null ? 0 : name.hashCode);

  static List<NodeJsongeoRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <NodeJsongeoRead>[];
    }

    return json.fold(<NodeJsongeoRead>[],
        (List<NodeJsongeoRead> previousValue, element) {
      final NodeJsongeoRead? object = NodeJsongeoRead.fromJson(element);
      if (object is NodeJsongeoRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, NodeJsongeoRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, NodeJsongeoRead>{};
    }

    return json.entries.fold(<String, NodeJsongeoRead>{},
        (Map<String, NodeJsongeoRead> previousValue, element) {
      final NodeJsongeoRead? object = NodeJsongeoRead.fromJson(element.value);
      if (object is NodeJsongeoRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of NodeJsongeoRead-objects as value to a dart map
  static Map<String, List<NodeJsongeoRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<NodeJsongeoRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<NodeJsongeoRead>>(
          key, NodeJsongeoRead.listFromJson(value));
    });
  }

  @override
  String toString() => 'NodeJsongeoRead[id=$id, name=$name]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'name')) r'name': name,
    };
  }
}
