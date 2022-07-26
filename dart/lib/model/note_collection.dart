part of keyclic_sdk_api.api;

class NoteCollection {
  NoteCollection({
    this.items,
  });

  factory NoteCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return NoteCollection(
      items: Note.listFromJson(json['items']),
    );
  }

  List<Note> items;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is NoteCollection &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (items is List && items.isNotEmpty) {
      hashCode ^= items
          .map((Note element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<NoteCollection> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => NoteCollection.fromJson(value))
            ?.toList() ??
        <NoteCollection>[];
  }

  static Map<String, NoteCollection> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, NoteCollection>((String key, dynamic value) {
          return MapEntry(key, NoteCollection.fromJson(value));
        }) ??
        <String, NoteCollection>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (items != null) 'items': items,
    };
  }

  @override
  String toString() {
    return 'NoteCollection[items=$items, ]';
  }
}
