//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Note {
  /// Returns a new [Note] instance.
  Note({
    this.links,
    this.createdAt,
    this.id,
    this.text = const [],
    this.type,
    this.updatedAt,
  });

  /// Returns a new [Note] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Note? fromJson(Map<String, dynamic>? json) {
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

    return Note(
      links:
          json[r'_links'] is! Map ? null : NoteLinks.fromJson(json[r'_links']),
      createdAt: createdAt,
      id: json[r'id'],
      text: json[r'text'] is! Iterable
          ? null
          : List<Map<String, Object>>.from(json[r'text']),
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  NoteLinks? links;

  final DateTime? createdAt;

  final String? id;

  List<Map<String, Object>>? text;

  String? type;

  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Note &&
        other.links == links &&
        other.createdAt == createdAt &&
        other.id == id &&
        DeepCollectionEquality.unordered().equals(text, other.text) &&
        other.type == type &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (text == null ? 0 : text.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<Note> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <Note>[];
    }

    return json.fold(<Note>[], (List<Note> previousValue, element) {
      final Note? object = Note.fromJson(element);
      if (object is Note) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Note> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Note>{};
    }

    return json.entries.fold(<String, Note>{},
        (Map<String, Note> previousValue, element) {
      final Note? object = Note.fromJson(element.value);
      if (object is Note) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Note-objects as value to a dart map
  static Map<String, List<Note>> mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Note>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Note>>(key, Note.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Note[links=$links, createdAt=$createdAt, id=$id, text=$text, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && links != null) ||
          (keys?.contains(r'links') ?? false))
        r'_links': links?.toJson(),
      if ((keys == null && createdAt != null) ||
          (keys?.contains(r'createdAt') ?? false))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if ((keys == null && id != null) || (keys?.contains(r'id') ?? false))
        r'id': id,
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
