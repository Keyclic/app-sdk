//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DocumentType {
  /// Returns a new [DocumentType] instance.
  DocumentType({
    this.id,
    this.type,
    this.name,
    this.description,
    this.signed,
  });

  /// Returns a new [DocumentType] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DocumentType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DocumentType(
      id: json[r'id'],
      type: json[r'type'],
      name: json[r'name'],
      description: json[r'description'],
      signed: json[r'signed'],
    );
  }

  String? id;

  String? type;

  String? name;

  String? description;

  bool? signed;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentType &&
        other.id == id &&
        other.type == type &&
        other.name == name &&
        other.description == description &&
        other.signed == signed;
  }

  @override
  int get hashCode =>
      (id == null ? 0 : id.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (signed == null ? 0 : signed.hashCode);

  static List<DocumentType> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <DocumentType>[];
    }
    return json
        .map((value) {
          return DocumentType.fromJson(value);
        })
        .whereType<DocumentType>()
        .toList();
  }

  static Map<String, DocumentType> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentType>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, DocumentType?>(key, DocumentType.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, DocumentType>;
  }

  // maps a json object with a list of DocumentType-objects as value to a dart map
  static Map<String, List<DocumentType>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<DocumentType>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: DocumentType.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'DocumentType[id=$id, type=$type, name=$name, description=$description, signed=$signed]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) r'id': id,
      if (type != null) r'type': type,
      if (name != null) r'name': name,
      if (description != null) r'description': description,
      if (signed != null) r'signed': signed,
    };
  }
}
