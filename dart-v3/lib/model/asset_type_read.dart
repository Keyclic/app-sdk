//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class AssetTypeRead {
  /// Returns a new [AssetTypeRead] instance.
  AssetTypeRead({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.description,
    required this.name,
  });

  /// Returns a new [AssetTypeRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssetTypeRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return AssetTypeRead(
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
      description: json[r'description'],
      name: json[r'name'],
    );
  }

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

    return other is AssetTypeRead &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.description == description &&
        other.name == name;
  }

  @override
  int get hashCode =>
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (description == null ? 0 : description.hashCode) +
      name.hashCode;

  static List<AssetTypeRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <AssetTypeRead>[];
    }

    return json.fold(<AssetTypeRead>[],
        (List<AssetTypeRead> previousValue, element) {
      final AssetTypeRead? object = AssetTypeRead.fromJson(element);
      if (object is AssetTypeRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AssetTypeRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssetTypeRead>{};
    }

    return json.entries.fold(<String, AssetTypeRead>{},
        (Map<String, AssetTypeRead> previousValue, element) {
      final AssetTypeRead? object = AssetTypeRead.fromJson(element.value);
      if (object is AssetTypeRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AssetTypeRead-objects as value to a dart map
  static Map<String, List<AssetTypeRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AssetTypeRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AssetTypeRead>>(
          key, AssetTypeRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'AssetTypeRead[id=$id, createdAt=$createdAt, updatedAt=$updatedAt, description=$description, name=$name]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
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
