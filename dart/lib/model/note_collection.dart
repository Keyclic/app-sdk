//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class NoteCollection {
  /// Returns a new [NoteCollection] instance.
  NoteCollection({
    this.items,
  });

  /// Returns a new [NoteCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static NoteCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NoteCollection(
      items: json[r'items'] is! Iterable
          ? null
          : Note.listFromJson(json[r'items']),
    );
  }

  List<Note>? items;

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

  static List<NoteCollection> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <NoteCollection>[];
    }

    return json.fold(<NoteCollection>[],
        (List<NoteCollection> previousValue, element) {
      final NoteCollection? object = NoteCollection.fromJson(element);
      if (object is NoteCollection) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, NoteCollection> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, NoteCollection>{};
    }

    return json.entries.fold(<String, NoteCollection>{},
        (Map<String, NoteCollection> previousValue, element) {
      final NoteCollection? object = NoteCollection.fromJson(element.value);
      if (object is NoteCollection) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of NoteCollection-objects as value to a dart map
  static Map<String, List<NoteCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<NoteCollection>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<NoteCollection>>(
          key, NoteCollection.listFromJson(value));
    });
  }

  @override
  String toString() => 'NoteCollection[items=$items]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && items != null) ||
          (keys?.contains(r'items') ?? false))
        r'items': items,
    };
  }
}
