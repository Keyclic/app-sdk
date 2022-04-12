//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class Document {
  /// Returns a new [Document] instance.
  Document({
    this.embedded,
    this.links,
    this.body = const [],
    this.createdAt,
    this.file,
    this.id,
    this.permission,
    this.text,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [Document] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory Document.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json[r'createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json[r'updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return Document(
      embedded: DocumentEmbedded.fromJson(json[r'_embedded']),
      links: DocumentLinks.fromJson(json[r'_links']),
      body: json[r'body'] is Iterable
          ? List<Map<String, dynamic>>.from(json[r'body'])
          : [],
      createdAt: createdAt,
      file: DocumentFile.fromJson(json[r'file']),
      id: json[r'id'],
      permission: DocumentPermission.fromJson(json[r'permission']),
      text: json[r'text'],
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  DocumentEmbedded embedded;

  DocumentLinks links;

  List<Map<String, dynamic>> body;

  DateTime createdAt;

  DocumentFile file;

  String id;

  DocumentPermission permission;

  String text;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Document &&
        other.embedded == embedded &&
        other.links == links &&
        DeepCollectionEquality.unordered().equals(body, other.body) &&
        other.createdAt == createdAt &&
        other.file == file &&
        other.id == id &&
        other.permission == permission &&
        other.text == text &&
        other.type == type &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (embedded == null ? 0 : embedded.hashCode) +
      (links == null ? 0 : links.hashCode) +
      (body == null ? 0 : body.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (file == null ? 0 : file.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (permission == null ? 0 : permission.hashCode) +
      (text == null ? 0 : text.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<Document> listFromJson(List<dynamic> json) {
    return <Document>[
      if (json is List)
        for (dynamic value in json) Document.fromJson(value),
    ];
  }

  static Map<String, Document> mapFromJson(Map<String, dynamic> json) {
    return <String, Document>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Document.fromJson(entry.value),
    };
  }

  // maps a json object with a list of Document-objects as value to a dart map
  static Map<String, List<Document>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<Document>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Document.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'Document[embedded=$embedded, links=$links, body=$body, createdAt=$createdAt, file=$file, id=$id, permission=$permission, text=$text, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
      if (links != null) r'_links': links,
      if (body != null) r'body': body,
      if (createdAt != null) r'createdAt': createdAt.toUtc().toIso8601String(),
      if (file != null) r'file': file,
      if (id != null) r'id': id,
      if (permission != null) r'permission': permission,
      if (text != null) r'text': text,
      if (type != null) r'type': type,
      if (updatedAt != null) r'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }
}
