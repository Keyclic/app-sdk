//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class FileJsonhalRead {
  /// Returns a new [FileJsonhalRead] instance.
  FileJsonhalRead({
    this.links,
    this.id,
    this.location,
    this.contentType,
    this.name,
    this.createdAt,
    this.updatedAt,
  });

  /// Returns a new [FileJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FileJsonhalRead? fromJson(Map<String, dynamic>? json) {
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

    return FileJsonhalRead(
      links: AssetTypeJsonhalReadLinks.fromJson(json[r'_links']),
      id: json[r'id'],
      location: json[r'location'],
      contentType: json[r'contentType'],
      name: json[r'name'],
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  AssetTypeJsonhalReadLinks? links;

  /// The resource identifier.
  final String? id;

  String? location;

  String? contentType;

  String? name;

  /// The date and time when the resource was created, in UTC format.
  DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FileJsonhalRead &&
        other.links == links &&
        other.id == id &&
        other.location == location &&
        other.contentType == contentType &&
        other.name == name &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (location == null ? 0 : location.hashCode) +
      (contentType == null ? 0 : contentType.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<FileJsonhalRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <FileJsonhalRead>[];
    }

    return json.fold(<FileJsonhalRead>[],
        (List<FileJsonhalRead> previousValue, element) {
      final FileJsonhalRead? object = FileJsonhalRead.fromJson(element);
      if (object is FileJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FileJsonhalRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FileJsonhalRead>{};
    }

    return json.entries.fold(<String, FileJsonhalRead>{},
        (Map<String, FileJsonhalRead> previousValue, element) {
      final FileJsonhalRead? object = FileJsonhalRead.fromJson(element.value);
      if (object is FileJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FileJsonhalRead-objects as value to a dart map
  static Map<String, List<FileJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FileJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FileJsonhalRead>>(
          key, FileJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'FileJsonhalRead[links=$links, id=$id, location=$location, contentType=$contentType, name=$name, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (links != null) r'_links': links,
      if (id != null) r'id': id,
      if (location != null) r'location': location,
      if (contentType != null) r'contentType': contentType,
      if (name != null) r'name': name,
      if (createdAt != null) r'createdAt': createdAt!.toUtc().toIso8601String(),
      if (updatedAt != null) r'updatedAt': updatedAt!.toUtc().toIso8601String(),
    };
  }
}
