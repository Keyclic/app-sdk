//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class TemplatePatch {
  /// Returns a new [TemplatePatch] instance.
  TemplatePatch({
    this.body = const [],
    this.footer = const [],
    this.header = const [],
    this.name,
    this.type,
  });

  /// Returns a new [TemplatePatch] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TemplatePatch? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TemplatePatch(
      body: json[r'body'] is Iterable
          ? List<Map<String, dynamic>>.from(json[r'body'])
          : [],
      footer: json[r'footer'] is Iterable
          ? List<Map<String, dynamic>>.from(json[r'footer'])
          : [],
      header: json[r'header'] is Iterable
          ? List<Map<String, dynamic>>.from(json[r'header'])
          : [],
      name: json[r'name'],
      type: json[r'type'],
    );
  }

  List<Map<String, dynamic>>? body;

  List<Map<String, dynamic>>? footer;

  List<Map<String, dynamic>>? header;

  String? name;

  String? type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is TemplatePatch &&
        DeepCollectionEquality.unordered().equals(body, other.body) &&
        DeepCollectionEquality.unordered().equals(footer, other.footer) &&
        DeepCollectionEquality.unordered().equals(header, other.header) &&
        other.name == name &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (body == null ? 0 : body.hashCode) +
      (footer == null ? 0 : footer.hashCode) +
      (header == null ? 0 : header.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<TemplatePatch> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <TemplatePatch>[];
    }
    return json
        .map((value) {
          return TemplatePatch.fromJson(value);
        })
        .whereType<TemplatePatch>()
        .toList();
  }

  static Map<String, TemplatePatch> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, TemplatePatch>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, TemplatePatch?>(key, TemplatePatch.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, TemplatePatch>;
  }

  // maps a json object with a list of TemplatePatch-objects as value to a dart map
  static Map<String, List<TemplatePatch>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<TemplatePatch>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: TemplatePatch.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'TemplatePatch[body=$body, footer=$footer, header=$header, name=$name, type=$type]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (body != null) r'body': body,
      if (footer != null) r'footer': footer,
      if (header != null) r'header': header,
      if (name != null) r'name': name,
      if (type != null) r'type': type,
    };
  }
}
