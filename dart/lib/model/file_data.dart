//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FileData {
  /// Returns a new [FileData] instance.
  FileData({
    required this.content,
    this.contentType,
    this.name,
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

  String? contentType;

  String? name;

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
      content.hashCode +
      (contentType == null ? 0 : contentType.hashCode) +
      (name == null ? 0 : name.hashCode);

  static List<FileData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <FileData>[];
    }

    return json.fold(<FileData>[], (List<FileData> previousValue, element) {
      final FileData? object = FileData.fromJson(element);
      if (object is FileData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FileData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FileData>{};
    }

    return json.entries.fold(<String, FileData>{},
        (Map<String, FileData> previousValue, element) {
      final FileData? object = FileData.fromJson(element.value);
      if (object is FileData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FileData-objects as value to a dart map
  static Map<String, List<FileData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FileData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FileData>>(
          key, FileData.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'FileData[content=$content, contentType=$contentType, name=$name]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'content': content,
      if (contentType != null) r'contentType': contentType,
      if (name != null) r'name': name,
    };
  }
}
