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

    return BusinessActivity(
      links: json[r'_links'] is! Map
          ? null
          : BusinessActivityLinks.fromJson(json[r'_links']),
      alternateName: json[r'alternateName'],
      createdAt: createdAt,
      id: json[r'id'],
      metadataSchema: json[r'metadataSchema'] is! Map
          ? null
          : BusinessActivitySchema.fromJson(json[r'metadataSchema']),
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

  static List<BusinessActivity> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <BusinessActivity>[];
    }

    return json.fold(<BusinessActivity>[],
        (List<BusinessActivity> previousValue, element) {
      final BusinessActivity? object = BusinessActivity.fromJson(element);
      if (object is BusinessActivity) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BusinessActivity> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BusinessActivity>{};
    }

    return json.entries.fold(<String, BusinessActivity>{},
        (Map<String, BusinessActivity> previousValue, element) {
      final BusinessActivity? object = BusinessActivity.fromJson(element.value);
      if (object is BusinessActivity) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BusinessActivity-objects as value to a dart map
  static Map<String, List<BusinessActivity>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BusinessActivity>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BusinessActivity>>(
          key, BusinessActivity.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'BusinessActivity[links=$links, alternateName=$alternateName, createdAt=$createdAt, id=$id, metadataSchema=$metadataSchema, name=$name, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && links != null) ||
          (keys?.contains(r'links') ?? false))
        r'_links': links?.toJson(),
      if ((keys == null && alternateName != null) ||
          (keys?.contains(r'alternateName') ?? false))
        r'alternateName': alternateName,
      if ((keys == null && createdAt != null) ||
          (keys?.contains(r'createdAt') ?? false))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if ((keys == null && id != null) || (keys?.contains(r'id') ?? false))
        r'id': id,
      if ((keys == null && metadataSchema != null) ||
          (keys?.contains(r'metadataSchema') ?? false))
        r'metadataSchema': metadataSchema?.toJson(),
      r'name': name,
      if ((keys == null && type != null) || (keys?.contains(r'type') ?? false))
        r'type': type,
      if ((keys == null && updatedAt != null) ||
          (keys?.contains(r'updatedAt') ?? false))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}
