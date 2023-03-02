//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class NotePatch {
  /// Returns a new [NotePatch] instance.
  NotePatch({
    this.text = const [],
  });

  /// Returns a new [NotePatch] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static NotePatch? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NotePatch(
      text: json[r'text'] is Iterable
          ? List<Map<String, dynamic>>.from(json[r'text'])
          : [],
    );
  }

  List<Map<String, dynamic>>? text;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is NotePatch &&
        DeepCollectionEquality.unordered().equals(text, other.text);
  }

  @override
  int get hashCode => (text == null ? 0 : text.hashCode);

  static List<NotePatch> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <NotePatch>[];
    }

    return json.fold(<NotePatch>[], (List<NotePatch> previousValue, element) {
      final NotePatch? object = NotePatch.fromJson(element);
      if (object is NotePatch) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, NotePatch> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, NotePatch>{};
    }

    return json.entries.fold(<String, NotePatch>{},
        (Map<String, NotePatch> previousValue, element) {
      final NotePatch? object = NotePatch.fromJson(element.value);
      if (object is NotePatch) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of NotePatch-objects as value to a dart map
  static Map<String, List<NotePatch>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<NotePatch>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<NotePatch>>(
          key, NotePatch.listFromJson(value));
    });
  }

  @override
  String toString() => 'NotePatch[text=$text]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (text != null) r'text': text,
    };
  }
}
