//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class TemplateData {
  /// Returns a new [TemplateData] instance.
  TemplateData({
    this.body,
    this.footer,
    this.header,
    required this.name,
    required this.organization,
    required this.type,
  });

  /// Returns a new [TemplateData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TemplateData? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return TemplateData(
      body: json[r'body'] == null
          ? null
          : List<Map<String, Object?>>.from(json[r'body']),
      footer: json[r'footer'] == null
          ? null
          : List<Map<String, Object?>>.from(json[r'footer']),
      header: json[r'header'] == null
          ? null
          : List<Map<String, Object?>>.from(json[r'header']),
      name: json[r'name'],
      organization: json[r'organization'],
      type: json[r'type'],
    );
  }

  List<Map<String, Object?>>? body;

  List<Map<String, Object?>>? footer;

  List<Map<String, Object?>>? header;

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

  static List<TemplateData> listFromJson(Iterable? json) {
    if (json == null) {
      return <TemplateData>[];
    }

    return json.fold(<TemplateData>[],
        (List<TemplateData> previousValue, element) {
      final TemplateData? object = TemplateData.fromJson(element);
      if (object is TemplateData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, TemplateData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, TemplateData>{};
    }

    return json.entries.fold(<String, TemplateData>{},
        (Map<String, TemplateData> previousValue, element) {
      final TemplateData? object = TemplateData.fromJson(element.value);
      if (object is TemplateData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of TemplateData-objects as value to a dart map
  static Map<String, List<TemplateData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<TemplateData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<TemplateData>>(
          key, TemplateData.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'TemplateData[body=$body, footer=$footer, header=$header, name=$name, organization=$organization, type=$type]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'body')) r'body': body,
      if (keys == null || keys.contains(r'footer')) r'footer': footer,
      if (keys == null || keys.contains(r'header')) r'header': header,
      r'name': name,
      r'organization': organization,
      r'type': type,
    };
  }
}
