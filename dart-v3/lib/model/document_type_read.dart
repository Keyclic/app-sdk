//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class DocumentTypeRead {
  /// Returns a new [DocumentTypeRead] instance.
  DocumentTypeRead({
    this.code,
    this.permissions,
    this.signed,
    this.id,
    this.description,
    required this.name,
  });

  /// Returns a new [DocumentTypeRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DocumentTypeRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return DocumentTypeRead(
      code: json[r'code'],
      permissions: json[r'permissions'] == null
          ? null
          : List<String>.from(json[r'permissions']),
      signed: json[r'signed'],
      id: json[r'id'],
      description: json[r'description'],
      name: json[r'name'],
    );
  }

  String? code;

  List<String>? permissions;

  bool? signed;

  /// The resource identifier.
  final String? id;

  String? description;

  String name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentTypeRead &&
        other.code == code &&
        DeepCollectionEquality.unordered()
            .equals(permissions, other.permissions) &&
        other.signed == signed &&
        other.id == id &&
        other.description == description &&
        other.name == name;
  }

  @override
  int get hashCode =>
      (code == null ? 0 : code.hashCode) +
      (permissions == null ? 0 : permissions.hashCode) +
      (signed == null ? 0 : signed.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (description == null ? 0 : description.hashCode) +
      name.hashCode;

  static List<DocumentTypeRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <DocumentTypeRead>[];
    }

    return json.fold(<DocumentTypeRead>[],
        (List<DocumentTypeRead> previousValue, element) {
      final DocumentTypeRead? object = DocumentTypeRead.fromJson(element);
      if (object is DocumentTypeRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DocumentTypeRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentTypeRead>{};
    }

    return json.entries.fold(<String, DocumentTypeRead>{},
        (Map<String, DocumentTypeRead> previousValue, element) {
      final DocumentTypeRead? object = DocumentTypeRead.fromJson(element.value);
      if (object is DocumentTypeRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DocumentTypeRead-objects as value to a dart map
  static Map<String, List<DocumentTypeRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DocumentTypeRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DocumentTypeRead>>(
          key, DocumentTypeRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'DocumentTypeRead[code=$code, permissions=$permissions, signed=$signed, id=$id, description=$description, name=$name]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'code')) r'code': code,
      if (keys == null || keys.contains(r'permissions'))
        r'permissions': permissions,
      if (keys == null || keys.contains(r'signed')) r'signed': signed,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      r'name': name,
    };
  }
}
