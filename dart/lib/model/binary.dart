//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Binary {
  /// Returns a new [Binary] instance.
  Binary({
    this.content,
    this.contentType,
    this.name,
  });

  /// Returns a new [Binary] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Binary? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Binary(
      content: json[r'content'],
      contentType: json[r'contentType'],
      name: json[r'name'],
    );
  }

  String? content;

  String? contentType;

  String? name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Binary &&
        other.content == content &&
        other.contentType == contentType &&
        other.name == name;
  }

  @override
  int get hashCode =>
      (content == null ? 0 : content.hashCode) +
      (contentType == null ? 0 : contentType.hashCode) +
      (name == null ? 0 : name.hashCode);

  static List<Binary> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Binary>[];
    }
    return json
        .map((value) {
          return Binary.fromJson(value);
        })
        .whereType<Binary>()
        .toList();
  }

  static Map<String, Binary> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Binary>{};
    }

    final map = json.map(
        (key, value) => MapEntry<String, Binary?>(key, Binary.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, Binary>;
  }

  // maps a json object with a list of Binary-objects as value to a dart map
  static Map<String, List<Binary>> mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<Binary>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: Binary.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'Binary[content=$content, contentType=$contentType, name=$name]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (content != null) r'content': content,
      if (contentType != null) r'contentType': contentType,
      if (name != null) r'name': name,
    };
  }
}
