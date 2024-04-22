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
  static BusinessActivity? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return BusinessActivity(
      links: BusinessActivityLinks.fromJson(json[r'_links']),
      alternateName: json[r'alternateName'],
      createdAt: mapToDateTime(json[r'createdAt']),
      id: json[r'id'],
      metadataSchema: BusinessActivitySchema.fromJson(json[r'metadataSchema']),
      name: json[r'name'],
      type: json[r'type'],
      updatedAt: mapToDateTime(json[r'updatedAt']),
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

  static List<BusinessActivity> listFromJson(Iterable? json) {
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

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'alternateName'))
        r'alternateName': alternateName,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null ||
          keys.any((key) => RegExp(r'^metadataSchema\.').hasMatch(key)))
        r'metadataSchema': metadataSchema?.toJson(keys?.fold<List<String>>(
            <String>[], (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^metadataSchema\.'))) {
            previousValue.add(element.split(RegExp(r'^metadataSchema\.')).last);
          }

          return previousValue;
        })),
      r'name': name,
      if (keys == null || keys.contains(r'type')) r'type': type,
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}
