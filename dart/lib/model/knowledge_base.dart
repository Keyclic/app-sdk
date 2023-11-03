//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class KnowledgeBase {
  /// Returns a new [KnowledgeBase] instance.
  KnowledgeBase({
    this.links,
    this.createdAt,
    this.description,
    this.id,
    required this.name,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [KnowledgeBase] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static KnowledgeBase? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? createdAt =
        json[r'createdAt'] == null ? null : DateTime.parse(json[r'createdAt']);
    if (createdAt != null && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime? updatedAt =
        json[r'updatedAt'] == null ? null : DateTime.parse(json[r'updatedAt']);
    if (updatedAt != null && updatedAt.isUtc == false) {
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

  KnowledgeBaseLinks? links;

  final DateTime? createdAt;

  String? description;

  final String? id;

  String name;

  String? type;

  final DateTime? updatedAt;

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
      name.hashCode +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<KnowledgeBase> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <KnowledgeBase>[];
    }

    return json.fold(<KnowledgeBase>[],
        (List<KnowledgeBase> previousValue, element) {
      final KnowledgeBase? object = KnowledgeBase.fromJson(element);
      if (object is KnowledgeBase) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, KnowledgeBase> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, KnowledgeBase>{};
    }

    return json.entries.fold(<String, KnowledgeBase>{},
        (Map<String, KnowledgeBase> previousValue, element) {
      final KnowledgeBase? object = KnowledgeBase.fromJson(element.value);
      if (object is KnowledgeBase) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of KnowledgeBase-objects as value to a dart map
  static Map<String, List<KnowledgeBase>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<KnowledgeBase>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<KnowledgeBase>>(
          key, KnowledgeBase.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'KnowledgeBase[links=$links, createdAt=$createdAt, description=$description, id=$id, name=$name, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && links != null) ||
          (keys?.contains(r'links') ?? false))
        r'_links': links?.toJson(),
      if ((keys == null && createdAt != null) ||
          (keys?.contains(r'createdAt') ?? false))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if ((keys == null && description != null) ||
          (keys?.contains(r'description') ?? false))
        r'description': description,
      if ((keys == null && id != null) || (keys?.contains(r'id') ?? false))
        r'id': id,
      r'name': name,
      if ((keys == null && type != null) || (keys?.contains(r'type') ?? false))
        r'type': type,
      if ((keys == null && updatedAt != null) ||
          (keys?.contains(r'updatedAt') ?? false))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}
