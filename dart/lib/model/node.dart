part of keyclic_sdk_api.api;

class Node {
  Node({
    this.id,
    this.type,
    this.name,
    this.embedded,
  });

  Node.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    id = json['id'];
    type = json['type'];
    name = json['name'];
    embedded = NodeEmbedded.fromJson(json['_embedded']);
  }

  String id;

  String type;

  String name;

  NodeEmbedded embedded;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Node &&
        runtimeType == other.runtimeType &&
        id == other.id &&
        type == other.type &&
        name == other.name &&
        embedded == other.embedded;
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^ id.hashCode ^ type.hashCode ^ name.hashCode ^ embedded.hashCode;

  static List<Node> listFromJson(List<dynamic> json) {
    return json == null
        ? <Node>[]
        : json.map((value) => Node.fromJson(value)).toList();
  }

  static Map<String, Node> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Node>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Node.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'name': name,
      '_embedded': embedded,
    };
  }

  @override
  String toString() {
    return 'Node[id=$id, type=$type, name=$name, embedded=$embedded, ]';
  }
}