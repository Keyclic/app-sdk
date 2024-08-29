//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class DocumentTypeJsonhalRead {
  /// Returns a new [DocumentTypeJsonhalRead] instance.
  DocumentTypeJsonhalRead({
    this.links,
    this.code,
    this.permissions,
    this.signed,
    this.id,
    this.description,
    required this.name,
  });

  /// Returns a new [DocumentTypeJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DocumentTypeJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return DocumentTypeJsonhalRead(
      links: AssetTypeJsonhalReadLinks.fromJson(json[r'_links']),
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

  AssetTypeJsonhalReadLinks? links;

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

    return other is DocumentTypeJsonhalRead &&
        other.links == links &&
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
      (links == null ? 0 : links.hashCode) +
      (code == null ? 0 : code.hashCode) +
      (permissions == null ? 0 : permissions.hashCode) +
      (signed == null ? 0 : signed.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (description == null ? 0 : description.hashCode) +
      name.hashCode;

  static List<DocumentTypeJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <DocumentTypeJsonhalRead>[];
    }

    return json.fold(<DocumentTypeJsonhalRead>[],
        (List<DocumentTypeJsonhalRead> previousValue, element) {
      final DocumentTypeJsonhalRead? object =
          DocumentTypeJsonhalRead.fromJson(element);
      if (object is DocumentTypeJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DocumentTypeJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentTypeJsonhalRead>{};
    }

    return json.entries.fold(<String, DocumentTypeJsonhalRead>{},
        (Map<String, DocumentTypeJsonhalRead> previousValue, element) {
      final DocumentTypeJsonhalRead? object =
          DocumentTypeJsonhalRead.fromJson(element.value);
      if (object is DocumentTypeJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DocumentTypeJsonhalRead-objects as value to a dart map
  static Map<String, List<DocumentTypeJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DocumentTypeJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DocumentTypeJsonhalRead>>(
          key, DocumentTypeJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'DocumentTypeJsonhalRead[links=$links, code=$code, permissions=$permissions, signed=$signed, id=$id, description=$description, name=$name]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
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
