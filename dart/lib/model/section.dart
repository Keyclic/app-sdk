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
  static Section? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return Section(
      links: SectionLinks.fromJson(json[r'_links']),
      createdAt: mapToDateTime(json[r'createdAt']),
      description: json[r'description'],
      id: json[r'id'],
      name: json[r'name'],
      type: json[r'type'],
      updatedAt: mapToDateTime(json[r'updatedAt']),
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

  static List<Section> listFromJson(Iterable? json) {
    if (json == null) {
      return <Section>[];
    }

    return json.fold(<Section>[], (List<Section> previousValue, element) {
      final Section? object = Section.fromJson(element);
      if (object is Section) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Section> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Section>{};
    }

    return json.entries.fold(<String, Section>{},
        (Map<String, Section> previousValue, element) {
      final Section? object = Section.fromJson(element.value);
      if (object is Section) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Section-objects as value to a dart map
  static Map<String, List<Section>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Section>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Section>>(key, Section.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Section[links=$links, createdAt=$createdAt, description=$description, id=$id, name=$name, type=$type, updatedAt=$updatedAt]';

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
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      if (keys == null || keys.contains(r'id')) r'id': id,
      r'name': name,
      if (keys == null || keys.contains(r'type')) r'type': type,
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}
