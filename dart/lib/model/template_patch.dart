//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class TemplatePatch {
  /// Returns a new [TemplatePatch] instance.
  TemplatePatch({
    this.body,
    this.footer,
    this.header,
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
      body: json[r'body'] is! Iterable
          ? null
          : List<Map<String, Object>>.from(json[r'body']),
      footer: json[r'footer'] is! Iterable
          ? null
          : List<Map<String, Object>>.from(json[r'footer']),
      header: json[r'header'] is! Iterable
          ? null
          : List<Map<String, Object>>.from(json[r'header']),
      name: json[r'name'],
      type: json[r'type'],
    );
  }

  List<Map<String, Object>>? body;

  List<Map<String, Object>>? footer;

  List<Map<String, Object>>? header;

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

  static List<TemplatePatch> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <TemplatePatch>[];
    }

    return json.fold(<TemplatePatch>[],
        (List<TemplatePatch> previousValue, element) {
      final TemplatePatch? object = TemplatePatch.fromJson(element);
      if (object is TemplatePatch) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, TemplatePatch> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, TemplatePatch>{};
    }

    return json.entries.fold(<String, TemplatePatch>{},
        (Map<String, TemplatePatch> previousValue, element) {
      final TemplatePatch? object = TemplatePatch.fromJson(element.value);
      if (object is TemplatePatch) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of TemplatePatch-objects as value to a dart map
  static Map<String, List<TemplatePatch>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<TemplatePatch>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<TemplatePatch>>(
          key, TemplatePatch.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'TemplatePatch[body=$body, footer=$footer, header=$header, name=$name, type=$type]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && body != null) || (keys?.contains(r'body') ?? false))
        r'body': body,
      if ((keys == null && footer != null) ||
          (keys?.contains(r'footer') ?? false))
        r'footer': footer,
      if ((keys == null && header != null) ||
          (keys?.contains(r'header') ?? false))
        r'header': header,
      if ((keys == null && name != null) || (keys?.contains(r'name') ?? false))
        r'name': name,
      if ((keys == null && type != null) || (keys?.contains(r'type') ?? false))
        r'type': type,
    };
  }
}
