//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class AssetTypeJsonhalRead {
  /// Returns a new [AssetTypeJsonhalRead] instance.
  AssetTypeJsonhalRead({
    this.links,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.description,
    required this.name,
  });

  /// Returns a new [AssetTypeJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssetTypeJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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

    return AssetTypeJsonhalRead(
      links: AssetTypeJsonhalReadLinks.fromJson(json[r'_links']),
      id: json[r'id'],
      createdAt: createdAt,
      updatedAt: updatedAt,
      description: json[r'description'],
      name: json[r'name'],
    );
  }

  AssetTypeJsonhalReadLinks? links;

  /// The resource identifier.
  final String? id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  String? description;

  String name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssetTypeJsonhalRead &&
        other.links == links &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.description == description &&
        other.name == name;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (description == null ? 0 : description.hashCode) +
      name.hashCode;

  static List<AssetTypeJsonhalRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <AssetTypeJsonhalRead>[];
    }

    return json.fold(<AssetTypeJsonhalRead>[],
        (List<AssetTypeJsonhalRead> previousValue, element) {
      final AssetTypeJsonhalRead? object =
          AssetTypeJsonhalRead.fromJson(element);
      if (object is AssetTypeJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AssetTypeJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssetTypeJsonhalRead>{};
    }

    return json.entries.fold(<String, AssetTypeJsonhalRead>{},
        (Map<String, AssetTypeJsonhalRead> previousValue, element) {
      final AssetTypeJsonhalRead? object =
          AssetTypeJsonhalRead.fromJson(element.value);
      if (object is AssetTypeJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AssetTypeJsonhalRead-objects as value to a dart map
  static Map<String, List<AssetTypeJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AssetTypeJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AssetTypeJsonhalRead>>(
          key, AssetTypeJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'AssetTypeJsonhalRead[links=$links, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, description=$description, name=$name]';

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
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      r'name': name,
    };
  }
}
