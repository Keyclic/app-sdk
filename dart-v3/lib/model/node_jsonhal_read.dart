//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class NodeJsonhalRead {
  /// Returns a new [NodeJsonhalRead] instance.
  NodeJsonhalRead({
    required this.id,
    required this.name,
  });

  /// Returns a new [NodeJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static NodeJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return NodeJsonhalRead(
      id: json[r'id'],
      name: json[r'name'],
    );
  }

  String id;

  String name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is NodeJsonhalRead && other.id == id && other.name == name;
  }

  @override
  int get hashCode => id.hashCode + name.hashCode;

  static List<NodeJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <NodeJsonhalRead>[];
    }

    return json.fold(<NodeJsonhalRead>[],
        (List<NodeJsonhalRead> previousValue, element) {
      final NodeJsonhalRead? object = NodeJsonhalRead.fromJson(element);
      if (object is NodeJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, NodeJsonhalRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, NodeJsonhalRead>{};
    }

    return json.entries.fold(<String, NodeJsonhalRead>{},
        (Map<String, NodeJsonhalRead> previousValue, element) {
      final NodeJsonhalRead? object = NodeJsonhalRead.fromJson(element.value);
      if (object is NodeJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of NodeJsonhalRead-objects as value to a dart map
  static Map<String, List<NodeJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<NodeJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<NodeJsonhalRead>>(
          key, NodeJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() => 'NodeJsonhalRead[id=$id, name=$name]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'id': id,
      r'name': name,
    };
  }
}
