//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class FileData {
  /// Returns a new [FileData] instance.
  FileData({
    @required this.content,
    @required this.contentType,
    @required this.name,
  });

  /// Returns a new [FileData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory FileData.fromJson(Map<String, dynamic> json) {
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
  int get hashCode =>
      (content == null ? 0 : content.hashCode) +
      (contentType == null ? 0 : contentType.hashCode) +
      (name == null ? 0 : name.hashCode);

  static List<FileData> listFromJson(List<dynamic> json) {
    return <FileData>[
      if (json is List)
        for (dynamic value in json) FileData.fromJson(value),
    ];
  }

  static Map<String, FileData> mapFromJson(Map<String, dynamic> json) {
    return <String, FileData>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FileData.fromJson(entry.value),
    };
  }

  // maps a json object with a list of FileData-objects as value to a dart map
  static Map<String, List<FileData>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<FileData>>{
      if (json is Map)
        for (final entry in json.entries)
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
