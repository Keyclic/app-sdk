part of keyclic_sdk_api.api;

class Note {
  Note({
    this.links,
    this.createdAt,
    this.id,
    this.text,
    this.type,
    this.updatedAt,
  });

  factory Note.fromJson(Map<String, dynamic> json) {
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

    return Note(
      links: NoteLinks.fromJson(json['_links']),
      createdAt: createdAt,
      id: json['id'],
      text: json['text'] is Iterable
          ? List<Map<String, dynamic>>.from(json['text'])
          : [],
      type: json['type'],
      updatedAt: updatedAt,
    );
  }

  NoteLinks links;

  DateTime createdAt;

  String id;

  List<Map<String, dynamic>> text;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Note &&
        runtimeType == other.runtimeType &&
        links == other.links &&
        createdAt == other.createdAt &&
        id == other.id &&
        DeepCollectionEquality.unordered().equals(text, other.text) &&
        type == other.type &&
        updatedAt == other.updatedAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (text is List && text.isNotEmpty) {
      hashCode ^= text
          .map((Map<String, dynamic> element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= links?.hashCode ?? 0;
    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<Note> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Note.fromJson(value))?.toList() ??
        <Note>[];
  }

  static Map<String, Note> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Note>((String key, dynamic value) {
          return MapEntry(key, Note.fromJson(value));
        }) ??
        <String, Note>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (links != null) '_links': links.toJson(),
      if (createdAt != null) 'createdAt': createdAt.toUtc().toIso8601String(),
      if (id != null) 'id': id,
      if (text != null) 'text': text,
      if (type != null) 'type': type,
      if (updatedAt != null) 'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Note[links=$links, createdAt=$createdAt, id=$id, text=$text, type=$type, updatedAt=$updatedAt, ]';
  }
}
