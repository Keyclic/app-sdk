//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class NoteJsonhalRead {
  /// Returns a new [NoteJsonhalRead] instance.
  NoteJsonhalRead({
    this.links,
    this.text,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.type,
  });

  /// Returns a new [NoteJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static NoteJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return NoteJsonhalRead(
      links: NoteJsonhalReadLinks.fromJson(json[r'_links']),
      text: Map<String, List>.from(json[r'text'] ?? {}),
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
      type: json[r'type'],
    );
  }

  NoteJsonhalReadLinks? links;

  Map<String, List<String>>? text;

  /// The resource identifier.
  final String? id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  final String? type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is NoteJsonhalRead &&
        other.links == links &&
        DeepCollectionEquality.unordered().equals(text, other.text) &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (text == null ? 0 : text.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<NoteJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <NoteJsonhalRead>[];
    }

    return json.fold(<NoteJsonhalRead>[],
        (List<NoteJsonhalRead> previousValue, element) {
      final NoteJsonhalRead? object = NoteJsonhalRead.fromJson(element);
      if (object is NoteJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, NoteJsonhalRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, NoteJsonhalRead>{};
    }

    return json.entries.fold(<String, NoteJsonhalRead>{},
        (Map<String, NoteJsonhalRead> previousValue, element) {
      final NoteJsonhalRead? object = NoteJsonhalRead.fromJson(element.value);
      if (object is NoteJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of NoteJsonhalRead-objects as value to a dart map
  static Map<String, List<NoteJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<NoteJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<NoteJsonhalRead>>(
          key, NoteJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'NoteJsonhalRead[links=$links, text=$text, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, type=$type]';

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
      if (keys == null || keys.contains(r'text')) r'text': text,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'type')) r'type': type,
    };
  }
}
