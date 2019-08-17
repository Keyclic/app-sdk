part of keyclic_sdk_api.api;

class Feed {
  Feed({
    this.id,
    this.name,
    this.type,
  });

  Feed.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    id = json['id'];
    name = json['name'];
    type = json['type'];
  }

  String id;

  String name;

  String type;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Feed && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<Feed> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Feed>()
        : json.map((value) => Feed.fromJson(value)).toList();
  }

  static Map<String, Feed> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Feed>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Feed.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'type': type,
    };
  }

  @override
  String toString() {
    return 'Feed[id=$id, name=$name, type=$type, ]';
  }
}