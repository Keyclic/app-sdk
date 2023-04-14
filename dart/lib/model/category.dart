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
    this.id,
    this.identificationNumber,
    required this.name,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [Category] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Category? fromJson(Map<String, dynamic>? json) {
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

    return Category(
      embedded: CategoryEmbedded.fromJson(json[r'_embedded']),
      links: CategoryLinks.fromJson(json[r'_links']),
      createdAt: createdAt,
      id: json[r'id'],
      identificationNumber: json[r'identificationNumber'],
      name: json[r'name'],
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  CategoryEmbedded? embedded;

  CategoryLinks? links;

  final DateTime? createdAt;

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
      (id == null ? 0 : id.hashCode) +
      (identificationNumber == null ? 0 : identificationNumber.hashCode) +
      name.hashCode +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<Category> listFromJson(List<dynamic>? json) {
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
      'Category[embedded=$embedded, links=$links, createdAt=$createdAt, id=$id, identificationNumber=$identificationNumber, name=$name, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
      if (links != null) r'_links': links,
      if (createdAt != null) r'createdAt': createdAt!.toUtc().toIso8601String(),
      if (id != null) r'id': id,
      if (identificationNumber != null)
        r'identificationNumber': identificationNumber,
      r'name': name,
      if (type != null) r'type': type,
      if (updatedAt != null) r'updatedAt': updatedAt!.toUtc().toIso8601String(),
    };
  }
}
