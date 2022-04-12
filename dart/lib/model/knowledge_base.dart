//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class KnowledgeBase {
  /// Returns a new [KnowledgeBase] instance.
  KnowledgeBase({
    this.links,
    this.createdAt,
    this.description,
    this.id,
    @required this.name,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [KnowledgeBase] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory KnowledgeBase.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json[r'createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json[r'updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return KnowledgeBase(
      links: KnowledgeBaseLinks.fromJson(json[r'_links']),
      createdAt: createdAt,
      description: json[r'description'],
      id: json[r'id'],
      name: json[r'name'],
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  KnowledgeBaseLinks links;

  DateTime createdAt;

  String description;

  String id;

  String name;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is KnowledgeBase &&
        other.links == links &&
        other.createdAt == createdAt &&
        other.description == description &&
        other.id == id &&
        other.name == name &&
        other.type == type &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<KnowledgeBase> listFromJson(List<dynamic> json) {
    return <KnowledgeBase>[
      if (json is List)
        for (dynamic value in json) KnowledgeBase.fromJson(value),
    ];
  }

  static Map<String, KnowledgeBase> mapFromJson(Map<String, dynamic> json) {
    return <String, KnowledgeBase>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: KnowledgeBase.fromJson(entry.value),
    };
  }

  // maps a json object with a list of KnowledgeBase-objects as value to a dart map
  static Map<String, List<KnowledgeBase>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<KnowledgeBase>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: KnowledgeBase.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'KnowledgeBase[links=$links, createdAt=$createdAt, description=$description, id=$id, name=$name, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (links != null) r'_links': links,
      if (createdAt != null) r'createdAt': createdAt.toUtc().toIso8601String(),
      if (description != null) r'description': description,
      if (id != null) r'id': id,
      r'name': name,
      if (type != null) r'type': type,
      if (updatedAt != null) r'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }
}
