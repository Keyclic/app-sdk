//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DocumentType {
  /// Returns a new [DocumentType] instance.
  DocumentType({
    this.id,
    this.code,
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
      code: json[r'code'],
      type: json[r'type'],
      name: json[r'name'],
      description: json[r'description'],
      signed: json[r'signed'],
    );
  }

  String? id;

  String? code;

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
        other.code == code &&
        other.type == type &&
        other.name == name &&
        other.description == description &&
        other.signed == signed;
  }

  @override
  int get hashCode =>
      (id == null ? 0 : id.hashCode) +
      (code == null ? 0 : code.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (signed == null ? 0 : signed.hashCode);

  static List<DocumentType> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <DocumentType>[];
    }

    return json.fold(<DocumentType>[],
        (List<DocumentType> previousValue, element) {
      final DocumentType? object = DocumentType.fromJson(element);
      if (object is DocumentType) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DocumentType> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentType>{};
    }

    return json.entries.fold(<String, DocumentType>{},
        (Map<String, DocumentType> previousValue, element) {
      final DocumentType? object = DocumentType.fromJson(element.value);
      if (object is DocumentType) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DocumentType-objects as value to a dart map
  static Map<String, List<DocumentType>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DocumentType>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DocumentType>>(
          key, DocumentType.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'DocumentType[id=$id, code=$code, type=$type, name=$name, description=$description, signed=$signed]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) r'id': id,
      if (code != null) r'code': code,
      if (type != null) r'type': type,
      if (name != null) r'name': name,
      if (description != null) r'description': description,
      if (signed != null) r'signed': signed,
    };
  }
}
