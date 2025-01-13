//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Category {
  /// Returns a new [Category] instance.
  Category({
    this.embedded,
    this.links,
    this.createdAt,
    this.enabled,
    this.id,
    this.identificationNumber,
    required this.name,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [Category] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Category? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return Category(
      embedded: CategoryEmbedded.fromJson(json[r'_embedded']),
      links: CategoryLinks.fromJson(json[r'_links']),
      createdAt: mapToDateTime(json[r'createdAt']),
      enabled: json[r'enabled'],
      id: json[r'id'],
      identificationNumber: json[r'identificationNumber'],
      name: json[r'name'],
      type: json[r'type'],
      updatedAt: mapToDateTime(json[r'updatedAt']),
    );
  }

  CategoryEmbedded? embedded;

  CategoryLinks? links;

  final DateTime? createdAt;

  bool? enabled;

  final String? id;

  String? identificationNumber;

  String name;

  String? type;

  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Category &&
        other.embedded == embedded &&
        other.links == links &&
        other.createdAt == createdAt &&
        other.enabled == enabled &&
        other.id == id &&
        other.identificationNumber == identificationNumber &&
        other.name == name &&
        other.type == type &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (embedded == null ? 0 : embedded.hashCode) +
      (links == null ? 0 : links.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (enabled == null ? 0 : enabled.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (identificationNumber == null ? 0 : identificationNumber.hashCode) +
      name.hashCode +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<Category> listFromJson(Iterable? json) {
    if (json == null) {
      return <Category>[];
    }

    return json.fold(<Category>[], (List<Category> previousValue, element) {
      final Category? object = Category.fromJson(element);
      if (object is Category) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Category> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Category>{};
    }

    return json.entries.fold(<String, Category>{},
        (Map<String, Category> previousValue, element) {
      final Category? object = Category.fromJson(element.value);
      if (object is Category) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Category-objects as value to a dart map
  static Map<String, List<Category>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Category>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Category>>(
          key, Category.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Category[embedded=$embedded, links=$links, createdAt=$createdAt, enabled=$enabled, id=$id, identificationNumber=$identificationNumber, name=$name, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^embedded\.').hasMatch(key)))
        r'_embedded': embedded?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^embedded\.'))) {
            previousValue.add(element.split(RegExp(r'^embedded\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'enabled')) r'enabled': enabled,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'identificationNumber'))
        r'identificationNumber': identificationNumber,
      r'name': name,
      if (keys == null || keys.contains(r'type')) r'type': type,
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}
