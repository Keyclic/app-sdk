//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BusinessActivity {
  /// Returns a new [BusinessActivity] instance.
  BusinessActivity({
    this.links,
    this.alternateName,
    this.createdAt,
    this.id,
    this.metadataSchema,
    required this.name,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [BusinessActivity] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BusinessActivity? fromJson(Map<String, dynamic>? json) {
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

    return BusinessActivity(
      links: BusinessActivityLinks.fromJson(json[r'_links']),
      alternateName: json[r'alternateName'],
      createdAt: createdAt,
      id: json[r'id'],
      metadataSchema: BusinessActivitySchema.fromJson(json[r'metadataSchema']),
      name: json[r'name'],
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  BusinessActivityLinks? links;

  String? alternateName;

  final DateTime? createdAt;

  final String? id;

  BusinessActivitySchema? metadataSchema;

  String name;

  String? type;

  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivity &&
        other.links == links &&
        other.alternateName == alternateName &&
        other.createdAt == createdAt &&
        other.id == id &&
        other.metadataSchema == metadataSchema &&
        other.name == name &&
        other.type == type &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (alternateName == null ? 0 : alternateName.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (metadataSchema == null ? 0 : metadataSchema.hashCode) +
      name.hashCode +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<BusinessActivity> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <BusinessActivity>[];
    }
    return json
        .map((value) {
          return BusinessActivity.fromJson(value);
        })
        .whereType<BusinessActivity>()
        .toList();
  }

  static Map<String, BusinessActivity> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BusinessActivity>{};
    }

    final map = json.map((key, value) => MapEntry<String, BusinessActivity?>(
        key, BusinessActivity.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, BusinessActivity>;
  }

  // maps a json object with a list of BusinessActivity-objects as value to a dart map
  static Map<String, List<BusinessActivity>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<BusinessActivity>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: BusinessActivity.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'BusinessActivity[links=$links, alternateName=$alternateName, createdAt=$createdAt, id=$id, metadataSchema=$metadataSchema, name=$name, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (links != null) r'_links': links,
      if (alternateName != null) r'alternateName': alternateName,
      if (createdAt != null) r'createdAt': createdAt!.toUtc().toIso8601String(),
      if (id != null) r'id': id,
      if (metadataSchema != null) r'metadataSchema': metadataSchema,
      r'name': name,
      if (type != null) r'type': type,
      if (updatedAt != null) r'updatedAt': updatedAt!.toUtc().toIso8601String(),
    };
  }
}
