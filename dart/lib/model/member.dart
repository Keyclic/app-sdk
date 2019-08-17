part of keyclic_sdk_api.api;

class Member {
  Member({
    this.embedded,
    this.links,
    this.createdAt,
    this.id,
    this.roles,
    this.type,
  });

  Member.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    embedded = MemberEmbedded.fromJson(json['_embedded']);
    links = MemberLinks.fromJson(json['_links']);
    createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    id = json['id'];
    roles = (json['roles'] as List)?.map((item) => item as String)?.toList();
    type = json['type'];
  }

  MemberEmbedded embedded;

  MemberLinks links;

  DateTime createdAt;

  String id;

  List<String> roles;

  String type;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Member && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<Member> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Member>()
        : json.map((value) => Member.fromJson(value)).toList();
  }

  static Map<String, Member> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Member>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Member.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'id': id,
      'roles': roles,
      'type': type,
    };
  }

  @override
  String toString() {
    return 'Member[embedded=$embedded, links=$links, createdAt=$createdAt, id=$id, roles=$roles, type=$type, ]';
  }
}