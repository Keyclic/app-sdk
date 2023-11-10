//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Document {
  /// Returns a new [Document] instance.
  Document({
    this.embedded,
    this.links,
    this.body,
    this.createdAt,
    this.file,
    this.id,
    this.permission,
    required this.state,
    this.tags,
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

    DateTime? createdAt =
        json[r'createdAt'] == null ? null : DateTime.parse(json[r'createdAt']);
    if (createdAt != null && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime? updatedAt =
        json[r'updatedAt'] == null ? null : DateTime.parse(json[r'updatedAt']);
    if (updatedAt != null && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return Document(
      embedded: DocumentEmbedded.fromJson(json[r'_embedded']),
      links: DocumentLinks.fromJson(json[r'_links']),
      body: json[r'body'] == null
          ? null
          : List<Map<String, Object>>.from(json[r'body']),
      createdAt: createdAt,
      file: DocumentFile.fromJson(json[r'file']),
      id: json[r'id'],
      permission: DocumentPermission.fromJson(json[r'permission']),
      state: DocumentStateEnum.fromJson(json[r'state'])!,
      tags: json[r'tags'] == null ? null : List<String>.from(json[r'tags']),
      text: json[r'text'],
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  DocumentEmbedded? embedded;

  DocumentLinks? links;

  List<Map<String, Object>>? body;

  final DateTime? createdAt;

  DocumentFile? file;

  final String? id;

  DocumentPermission? permission;

  DocumentStateEnum state;

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
        other.state == state &&
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
      state.hashCode +
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
      'Document[embedded=$embedded, links=$links, body=$body, createdAt=$createdAt, file=$file, id=$id, permission=$permission, state=$state, tags=$tags, text=$text, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && embedded != null) ||
          (keys?.contains(r'embedded') ?? false))
        r'_embedded': embedded?.toJson(),
      if ((keys == null && links != null) ||
          (keys?.contains(r'links') ?? false))
        r'_links': links?.toJson(),
      if ((keys == null && body != null) || (keys?.contains(r'body') ?? false))
        r'body': body,
      if ((keys == null && createdAt != null) ||
          (keys?.contains(r'createdAt') ?? false))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if ((keys == null && file != null) || (keys?.contains(r'file') ?? false))
        r'file': file?.toJson(),
      if ((keys == null && id != null) || (keys?.contains(r'id') ?? false))
        r'id': id,
      if ((keys == null && permission != null) ||
          (keys?.contains(r'permission') ?? false))
        r'permission': permission?.toJson(),
      r'state': state,
      if ((keys == null && tags != null) || (keys?.contains(r'tags') ?? false))
        r'tags': tags,
      if ((keys == null && text != null) || (keys?.contains(r'text') ?? false))
        r'text': text,
      if ((keys == null && type != null) || (keys?.contains(r'type') ?? false))
        r'type': type,
      if ((keys == null && updatedAt != null) ||
          (keys?.contains(r'updatedAt') ?? false))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}

class DocumentStateEnum {
  /// Instantiate a new enum with the provided [value].
  const DocumentStateEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DRAFT = DocumentStateEnum._(r'DRAFT');
  static const PENDING_REVIEW = DocumentStateEnum._(r'PENDING_REVIEW');
  static const PUBLISHED = DocumentStateEnum._(r'PUBLISHED');
  static const PUBLISHING_FAILED = DocumentStateEnum._(r'PUBLISHING_FAILED');
  static const PUBLISHING = DocumentStateEnum._(r'PUBLISHING');

  /// List of all possible values in this [enum][DocumentStateEnum].
  static const values = <DocumentStateEnum>[
    DRAFT,
    PENDING_REVIEW,
    PUBLISHED,
    PUBLISHING_FAILED,
    PUBLISHING,
  ];

  static DocumentStateEnum? fromJson(dynamic value) =>
      DocumentStateEnumTypeTransformer().decode(value);

  static List<DocumentStateEnum> listFromJson(List<dynamic> json) {
    return json
        .map((value) {
          return DocumentStateEnum.fromJson(value);
        })
        .whereType<DocumentStateEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [DocumentStateEnum] to String,
/// and [decode] dynamic data back to [DocumentStateEnum].
class DocumentStateEnumTypeTransformer {
  const DocumentStateEnumTypeTransformer._();

  factory DocumentStateEnumTypeTransformer() =>
      _instance ??= DocumentStateEnumTypeTransformer._();

  String encode(DocumentStateEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DocumentStateEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DocumentStateEnum? decode(dynamic data, {bool allowNull = true}) {
    switch (data) {
      case r'DRAFT':
        return DocumentStateEnum.DRAFT;
      case r'PENDING_REVIEW':
        return DocumentStateEnum.PENDING_REVIEW;
      case r'PUBLISHED':
        return DocumentStateEnum.PUBLISHED;
      case r'PUBLISHING_FAILED':
        return DocumentStateEnum.PUBLISHING_FAILED;
      case r'PUBLISHING':
        return DocumentStateEnum.PUBLISHING;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [DocumentStateEnumTypeTransformer] instance.
  static DocumentStateEnumTypeTransformer? _instance;
}
