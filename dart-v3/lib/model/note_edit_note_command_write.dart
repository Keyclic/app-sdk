//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class NoteEditNoteCommandWrite {
  /// Returns a new [NoteEditNoteCommandWrite] instance.
  NoteEditNoteCommandWrite({
    this.text,
  });

  /// Returns a new [NoteEditNoteCommandWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static NoteEditNoteCommandWrite? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return NoteEditNoteCommandWrite(
      text: json[r'text'] == null ? null : List<String>.from(json[r'text']),
    );
  }

  List<String>? text;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is NoteEditNoteCommandWrite &&
        DeepCollectionEquality.unordered().equals(text, other.text);
  }

  @override
  int get hashCode => (text == null ? 0 : text.hashCode);

  static List<NoteEditNoteCommandWrite> listFromJson(Iterable? json) {
    if (json == null) {
      return <NoteEditNoteCommandWrite>[];
    }

    return json.fold(<NoteEditNoteCommandWrite>[],
        (List<NoteEditNoteCommandWrite> previousValue, element) {
      final NoteEditNoteCommandWrite? object =
          NoteEditNoteCommandWrite.fromJson(element);
      if (object is NoteEditNoteCommandWrite) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, NoteEditNoteCommandWrite> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, NoteEditNoteCommandWrite>{};
    }

    return json.entries.fold(<String, NoteEditNoteCommandWrite>{},
        (Map<String, NoteEditNoteCommandWrite> previousValue, element) {
      final NoteEditNoteCommandWrite? object =
          NoteEditNoteCommandWrite.fromJson(element.value);
      if (object is NoteEditNoteCommandWrite) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of NoteEditNoteCommandWrite-objects as value to a dart map
  static Map<String, List<NoteEditNoteCommandWrite>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<NoteEditNoteCommandWrite>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<NoteEditNoteCommandWrite>>(
          key, NoteEditNoteCommandWrite.listFromJson(value));
    });
  }

  @override
  String toString() => 'NoteEditNoteCommandWrite[text=$text]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'text')) r'text': text,
    };
  }
}
