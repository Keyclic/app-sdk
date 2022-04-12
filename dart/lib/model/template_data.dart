//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class TemplateData {
  /// Returns a new [TemplateData] instance.
  TemplateData({
    this.body = const [],
    this.footer = const [],
    this.header = const [],
    required this.name,
    required this.organization,
    required this.type,
  });

  /// Returns a new [TemplateData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TemplateData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TemplateData(
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
      organization: json[r'organization'],
      type: json[r'type'],
    );
  }

  List<Map<String, dynamic>>? body;

  List<Map<String, dynamic>>? footer;

  List<Map<String, dynamic>>? header;

  String name;

  String organization;

  String type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is TemplateData &&
        DeepCollectionEquality.unordered().equals(body, other.body) &&
        DeepCollectionEquality.unordered().equals(footer, other.footer) &&
        DeepCollectionEquality.unordered().equals(header, other.header) &&
        other.name == name &&
        other.organization == organization &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (body == null ? 0 : body.hashCode) +
      (footer == null ? 0 : footer.hashCode) +
      (header == null ? 0 : header.hashCode) +
      name.hashCode +
      organization.hashCode +
      type.hashCode;

  static List<TemplateData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <TemplateData>[];
    }
    return json
        .map((value) {
          return TemplateData.fromJson(value);
        })
        .whereType<TemplateData>()
        .toList();
  }

  static Map<String, TemplateData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, TemplateData>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, TemplateData?>(key, TemplateData.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, TemplateData>;
  }

  // maps a json object with a list of TemplateData-objects as value to a dart map
  static Map<String, List<TemplateData>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<TemplateData>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: TemplateData.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'TemplateData[body=$body, footer=$footer, header=$header, name=$name, organization=$organization, type=$type]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (body != null) r'body': body,
      if (footer != null) r'footer': footer,
      if (header != null) r'header': header,
      r'name': name,
      r'organization': organization,
      r'type': type,
    };
  }
}
