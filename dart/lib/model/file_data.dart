//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FileData {
  /// Returns a new [FileData] instance.
  FileData({
    required this.content,
    required this.contentType,
    required this.name,
  });

  /// Returns a new [FileData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FileData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FileData(
      content: json[r'content'],
      contentType: json[r'contentType'],
      name: json[r'name'],
    );
  }

  String content;

  String contentType;

  String name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FileData &&
        other.content == content &&
        other.contentType == contentType &&
        other.name == name;
  }

  @override
  int get hashCode => content.hashCode + contentType.hashCode + name.hashCode;

  static List<FileData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <FileData>[];
    }
    return json
        .map((value) {
          return FileData.fromJson(value);
        })
        .whereType<FileData>()
        .toList();
  }

  static Map<String, FileData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FileData>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, FileData?>(key, FileData.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, FileData>;
  }

  // maps a json object with a list of FileData-objects as value to a dart map
  static Map<String, List<FileData>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<FileData>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: FileData.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'FileData[content=$content, contentType=$contentType, name=$name]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'content': content,
      r'contentType': contentType,
      r'name': name,
    };
  }
}
