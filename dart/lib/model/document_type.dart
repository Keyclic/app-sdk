//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DocumentType {
  /// Returns a new [DocumentType] instance.
  DocumentType({
    this.id,
    this.code,
    this.description,
    this.name,
    this.permissions,
    this.signed,
    this.type,
  });

  /// Returns a new [DocumentType] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DocumentType? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return DocumentType(
      id: json[r'id'],
      code: json[r'code'],
      description: json[r'description'],
      name: json[r'name'],
      permissions: json[r'permissions'] == null
          ? null
          : List<String>.from(json[r'permissions']),
      signed: json[r'signed'],
      type: json[r'type'],
    );
  }

  String? id;

  String? code;

  String? description;

  String? name;

  List<String>? permissions;

  bool? signed;

  String? type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentType &&
        other.id == id &&
        other.code == code &&
        other.description == description &&
        other.name == name &&
        DeepCollectionEquality.unordered()
            .equals(permissions, other.permissions) &&
        other.signed == signed &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (id == null ? 0 : id.hashCode) +
      (code == null ? 0 : code.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (permissions == null ? 0 : permissions.hashCode) +
      (signed == null ? 0 : signed.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<DocumentType> listFromJson(Iterable? json) {
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
      'DocumentType[id=$id, code=$code, description=$description, name=$name, permissions=$permissions, signed=$signed, type=$type]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'code')) r'code': code,
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      if (keys == null || keys.contains(r'name')) r'name': name,
      if (keys == null || keys.contains(r'permissions'))
        r'permissions': permissions,
      if (keys == null || keys.contains(r'signed')) r'signed': signed,
      if (keys == null || keys.contains(r'type')) r'type': type,
    };
  }
}
