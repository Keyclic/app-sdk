part of keyclic_sdk_api.api;

class Template {
  Template({
    this.body,
    this.createdAt,
    this.footer,
    this.header,
    this.id,
    this.name,
    this.type,
    this.updatedAt,
  });

  factory Template.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }

    DateTime updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }

    return Template(
      body: List<Map<String, dynamic>>.from(json['body']),
      createdAt: createdAt,
      footer: List<Map<String, dynamic>>.from(json['footer']),
      header: List<Map<String, dynamic>>.from(json['header']),
      id: json['id'],
      name: json['name'],
      type: json['type'],
      updatedAt: updatedAt,
    );
  }

  List<Map<String, dynamic>> body;

  DateTime createdAt;

  List<Map<String, dynamic>> footer;

  List<Map<String, dynamic>> header;

  String id;

  String name;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Template &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(body, other.body) &&
        createdAt == other.createdAt &&
        DeepCollectionEquality.unordered().equals(footer, other.footer) &&
        DeepCollectionEquality.unordered().equals(header, other.header) &&
        id == other.id &&
        name == other.name &&
        type == other.type &&
        updatedAt == other.updatedAt;
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

    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<Template> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Template.fromJson(value))?.toList() ??
        <Template>[];
  }

  static Map<String, Template> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Template>((String key, dynamic value) {
          return MapEntry(key, Template.fromJson(value));
        }) ??
        <String, Template>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (body != null) 'body': body,
      if (createdAt != null) 'createdAt': createdAt.toUtc().toIso8601String(),
      if (footer != null) 'footer': footer,
      if (header != null) 'header': header,
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (type != null) 'type': type,
      if (updatedAt != null) 'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Template[body=$body, createdAt=$createdAt, footer=$footer, header=$header, id=$id, name=$name, type=$type, updatedAt=$updatedAt, ]';
  }
}
