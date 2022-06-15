//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Section {
  /// Returns a new [Section] instance.
  Section({
    this.links,
    this.createdAt,
    this.description,
    this.id,
    required this.name,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [Section] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Section? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? createdAt = json[r'createdAt'] is String
        ? DateTime.parse(json[r'createdAt'])
        : null;
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime? updatedAt = json[r'updatedAt'] is String
        ? DateTime.parse(json[r'updatedAt'])
        : null;
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return Section(
      links: SectionLinks.fromJson(json[r'_links']),
      createdAt: createdAt,
      description: json[r'description'],
      id: json[r'id'],
      name: json[r'name'],
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  SectionLinks? links;

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

    return other is Section &&
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

  static List<Section> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Section>[];
    }
    return json
        .map((value) {
          return Section.fromJson(value);
        })
        .whereType<Section>()
        .toList();
  }

  static Map<String, Section> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Section>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, Section?>(key, Section.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, Section>;
  }

  // maps a json object with a list of Section-objects as value to a dart map
  static Map<String, List<Section>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<Section>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: Section.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'Section[links=$links, createdAt=$createdAt, description=$description, id=$id, name=$name, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (links != null) r'_links': links,
      if (createdAt != null) r'createdAt': createdAt!.toUtc().toIso8601String(),
      if (description != null) r'description': description,
      if (id != null) r'id': id,
      r'name': name,
      if (type != null) r'type': type,
      if (updatedAt != null) r'updatedAt': updatedAt!.toUtc().toIso8601String(),
    };
  }
}
