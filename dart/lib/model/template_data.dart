part of keyclic_sdk_api.api;

class TemplateData {
  TemplateData({
    this.body,
    this.footer,
    this.header,
    this.name,
    this.organization,
    this.type,
  });

  factory TemplateData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return TemplateData(
      body: List<Map<String, dynamic>>.from(json['body']),
      footer: List<Map<String, dynamic>>.from(json['footer']),
      header: List<Map<String, dynamic>>.from(json['header']),
      name: json['name'],
      organization: json['organization'],
      type: json['type'],
    );
  }

  List<Map<String, dynamic>> body;

  List<Map<String, dynamic>> footer;

  List<Map<String, dynamic>> header;

  String name;

  String organization;

  String type;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is TemplateData &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(body, other.body) &&
        DeepCollectionEquality.unordered().equals(footer, other.footer) &&
        DeepCollectionEquality.unordered().equals(header, other.header) &&
        name == other.name &&
        organization == other.organization &&
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
    hashCode ^= organization?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;

    return hashCode;
  }

  static List<TemplateData> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => TemplateData.fromJson(value))
            ?.toList() ??
        <TemplateData>[];
  }

  static Map<String, TemplateData> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, TemplateData>((String key, dynamic value) {
          return MapEntry(key, TemplateData.fromJson(value));
        }) ??
        <String, TemplateData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (body != null) 'body': body,
      if (footer != null) 'footer': footer,
      if (header != null) 'header': header,
      if (name != null) 'name': name,
      if (organization != null) 'organization': organization,
      if (type != null) 'type': type,
    };
  }

  @override
  String toString() {
    return 'TemplateData[body=$body, footer=$footer, header=$header, name=$name, organization=$organization, type=$type, ]';
  }
}
