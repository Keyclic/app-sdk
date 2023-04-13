part of keyclic_sdk_api.api;

class Rule {
  Rule({
    this.links,
    this.description,
    this.id,
    this.name,
    this.type,
  });

  factory Rule.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Rule(
      links: RuleLinks.fromJson(json['_links']),
      description: json['description'],
      id: json['id'],
      name: json['name'],
      type: json['type'],
    );
  }

  RuleLinks links;

  String description;

  String id;

  String name;

  String type;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Rule &&
        runtimeType == other.runtimeType &&
        links == other.links &&
        description == other.description &&
        id == other.id &&
        name == other.name &&
        type == other.type;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= links?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;

    return hashCode;
  }

  static List<Rule> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Rule.fromJson(value))?.toList() ??
        <Rule>[];
  }

  static Map<String, Rule> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Rule>((String key, dynamic value) {
          return MapEntry(key, Rule.fromJson(value));
        }) ??
        <String, Rule>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (links != null) '_links': links.toJson(),
      if (description != null) 'description': description,
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (type != null) 'type': type,
    };
  }

  @override
  String toString() {
    return 'Rule[links=$links, description=$description, id=$id, name=$name, type=$type, ]';
  }
}
