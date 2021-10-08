part of keyclic_sdk_api.api;

class TemplatePatch {
  TemplatePatch({
    this.body,
    this.footer,
    this.header,
    this.name,
    this.type,
  });

  factory TemplatePatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return TemplatePatch(
      body: json['body'] is Iterable
          ? List<Map<String, dynamic>>.from(json['body'])
          : [],
      footer: json['footer'] is Iterable
          ? List<Map<String, dynamic>>.from(json['footer'])
          : [],
      header: json['header'] is Iterable
          ? List<Map<String, dynamic>>.from(json['header'])
          : [],
      name: json['name'],
      type: json['type'],
    );
  }

  List<Map<String, dynamic>> body;

  List<Map<String, dynamic>> footer;

  List<Map<String, dynamic>> header;

  String name;

  String type;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is TemplatePatch &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(body, other.body) &&
        DeepCollectionEquality.unordered().equals(footer, other.footer) &&
        DeepCollectionEquality.unordered().equals(header, other.header) &&
        name == other.name &&
        type == other.type;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (body is List && body.isNotEmpty) {
      hashCode ^= body
          .map((Map<String, dynamic> element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }
    if (footer is List && footer.isNotEmpty) {
      hashCode ^= footer
          .map((Map<String, dynamic> element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }
    if (header is List && header.isNotEmpty) {
      hashCode ^= header
          .map((Map<String, dynamic> element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;

    return hashCode;
  }

  static List<TemplatePatch> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => TemplatePatch.fromJson(value))
            ?.toList() ??
        <TemplatePatch>[];
  }

  static Map<String, TemplatePatch> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, TemplatePatch>((String key, dynamic value) {
          return MapEntry(key, TemplatePatch.fromJson(value));
        }) ??
        <String, TemplatePatch>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (body != null) 'body': body,
      if (footer != null) 'footer': footer,
      if (header != null) 'header': header,
      if (name != null) 'name': name,
      if (type != null) 'type': type,
    };
  }

  @override
  String toString() {
    return 'TemplatePatch[body=$body, footer=$footer, header=$header, name=$name, type=$type, ]';
  }
}
