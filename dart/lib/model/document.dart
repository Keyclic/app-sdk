//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

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
    this.tags = const [],
    this.text,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [Document] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Document? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? createdAt = json[r'createdAt'] is String
        ? DateTime.parse(json[r'createdAt'])
        : null;
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime? updatedAt = json[r'updatedAt'] is String
        ? DateTime.parse(json[r'updatedAt'])
        : null;
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
      tags: json[r'tags'] == null ? null : List<String>.from(json[r'tags']),
      text: json[r'text'],
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  DocumentEmbedded? embedded;

  DocumentLinks? links;

  List<Map<String, dynamic>>? body;

  final DateTime? createdAt;

  DocumentFile? file;

  final String? id;

  DocumentPermission? permission;

  List<String>? tags;

  String? text;

  String? type;

  final DateTime? updatedAt;

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
        DeepCollectionEquality.unordered().equals(tags, other.tags) &&
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
      (tags == null ? 0 : tags.hashCode) +
      (text == null ? 0 : text.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<Document> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Document>[];
    }

    return json.fold(<Document>[], (List<Document> previousValue, element) {
      final Document? object = Document.fromJson(element);
      if (object is Document) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Document> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Document>{};
    }

    return json.entries.fold(<String, Document>{},
        (Map<String, Document> previousValue, element) {
      final Document? object = Document.fromJson(element.value);
      if (object is Document) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Document-objects as value to a dart map
  static Map<String, List<Document>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Document>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Document>>(
          key, Document.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Document[embedded=$embedded, links=$links, body=$body, createdAt=$createdAt, file=$file, id=$id, permission=$permission, tags=$tags, text=$text, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
      if (links != null) r'_links': links,
      if (body != null) r'body': body,
      if (createdAt != null) r'createdAt': createdAt!.toUtc().toIso8601String(),
      if (file != null) r'file': file,
      if (id != null) r'id': id,
      if (permission != null) r'permission': permission,
      if (tags != null) r'tags': tags,
      if (text != null) r'text': text,
      if (type != null) r'type': type,
      if (updatedAt != null) r'updatedAt': updatedAt!.toUtc().toIso8601String(),
    };
  }
}
