//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class NoteCreateNoteCommandWrite {
  /// Returns a new [NoteCreateNoteCommandWrite] instance.
  NoteCreateNoteCommandWrite({
    required this.task,
    this.text = const [],
  });

  /// Returns a new [NoteCreateNoteCommandWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static NoteCreateNoteCommandWrite? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return NoteCreateNoteCommandWrite(
      task: json[r'task'],
      text: List<String>.from(json[r'text']),
    );
  }

  String task;

  List<String> text;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is NoteCreateNoteCommandWrite &&
        other.task == task &&
        DeepCollectionEquality.unordered().equals(text, other.text);
  }

  @override
  int get hashCode => task.hashCode + text.hashCode;

  static List<NoteCreateNoteCommandWrite> listFromJson(Iterable? json) {
    if (json == null) {
      return <NoteCreateNoteCommandWrite>[];
    }

    return json.fold(<NoteCreateNoteCommandWrite>[],
        (List<NoteCreateNoteCommandWrite> previousValue, element) {
      final NoteCreateNoteCommandWrite? object =
          NoteCreateNoteCommandWrite.fromJson(element);
      if (object is NoteCreateNoteCommandWrite) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, NoteCreateNoteCommandWrite> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, NoteCreateNoteCommandWrite>{};
    }

    return json.entries.fold(<String, NoteCreateNoteCommandWrite>{},
        (Map<String, NoteCreateNoteCommandWrite> previousValue, element) {
      final NoteCreateNoteCommandWrite? object =
          NoteCreateNoteCommandWrite.fromJson(element.value);
      if (object is NoteCreateNoteCommandWrite) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of NoteCreateNoteCommandWrite-objects as value to a dart map
  static Map<String, List<NoteCreateNoteCommandWrite>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<NoteCreateNoteCommandWrite>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<NoteCreateNoteCommandWrite>>(
          key, NoteCreateNoteCommandWrite.listFromJson(value));
    });
  }

  @override
  String toString() => 'NoteCreateNoteCommandWrite[task=$task, text=$text]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'task': task,
      r'text': text,
    };
  }
}
