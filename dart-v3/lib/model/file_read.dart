//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class FileRead {
  /// Returns a new [FileRead] instance.
  FileRead({
    this.id,
    this.location,
    this.contentType,
    this.name,
    this.createdAt,
    this.updatedAt,
  });

  /// Returns a new [FileRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FileRead? fromJson(Map<String, dynamic>? json) {
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

    return FileRead(
      id: json[r'id'],
      location: json[r'location'],
      contentType: json[r'contentType'],
      name: json[r'name'],
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

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

    return other is FileRead &&
        other.id == id &&
        other.location == location &&
        other.contentType == contentType &&
        other.name == name &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (id == null ? 0 : id.hashCode) +
      (location == null ? 0 : location.hashCode) +
      (contentType == null ? 0 : contentType.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<FileRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <FileRead>[];
    }

    return json.fold(<FileRead>[], (List<FileRead> previousValue, element) {
      final FileRead? object = FileRead.fromJson(element);
      if (object is FileRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FileRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FileRead>{};
    }

    return json.entries.fold(<String, FileRead>{},
        (Map<String, FileRead> previousValue, element) {
      final FileRead? object = FileRead.fromJson(element.value);
      if (object is FileRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FileRead-objects as value to a dart map
  static Map<String, List<FileRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FileRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FileRead>>(
          key, FileRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'FileRead[id=$id, location=$location, contentType=$contentType, name=$name, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) r'id': id,
      if (location != null) r'location': location,
      if (contentType != null) r'contentType': contentType,
      if (name != null) r'name': name,
      if (createdAt != null) r'createdAt': createdAt!.toUtc().toIso8601String(),
      if (updatedAt != null) r'updatedAt': updatedAt!.toUtc().toIso8601String(),
    };
  }
}
