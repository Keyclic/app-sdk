//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class NoteCollection {
  /// Returns a new [NoteCollection] instance.
  NoteCollection({
    this.items = const [],
  });

  /// Returns a new [NoteCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory NoteCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return NoteCollection(
      items: Note.listFromJson(json[r'items']),
    );
  }

  List<Note> items;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is NoteCollection &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  @override
  int get hashCode => (items == null ? 0 : items.hashCode);

  static List<NoteCollection> listFromJson(List<dynamic> json) {
    return <NoteCollection>[
      if (json is List)
        for (dynamic value in json) NoteCollection.fromJson(value),
    ];
  }

  static Map<String, NoteCollection> mapFromJson(Map<String, dynamic> json) {
    return <String, NoteCollection>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: NoteCollection.fromJson(entry.value),
    };
  }

  // maps a json object with a list of NoteCollection-objects as value to a dart map
  static Map<String, List<NoteCollection>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<NoteCollection>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: NoteCollection.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'NoteCollection[items=$items]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (items != null) r'items': items,
    };
  }
}
