//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class NotePatch {
  /// Returns a new [NotePatch] instance.
  NotePatch({
    this.text = const [],
  });

  /// Returns a new [NotePatch] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory NotePatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return NotePatch(
      text: json[r'text'] is Iterable
          ? List<Map<String, dynamic>>.from(json[r'text'])
          : [],
    );
  }

  List<Map<String, dynamic>> text;

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

  static List<NotePatch> listFromJson(List<dynamic> json) {
    return <NotePatch>[
      if (json is List)
        for (dynamic value in json) NotePatch.fromJson(value),
    ];
  }

  static Map<String, NotePatch> mapFromJson(Map<String, dynamic> json) {
    return <String, NotePatch>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: NotePatch.fromJson(entry.value),
    };
  }

  // maps a json object with a list of NotePatch-objects as value to a dart map
  static Map<String, List<NotePatch>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<NotePatch>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: NotePatch.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'NotePatch[text=$text]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (text != null) r'text': text,
    };
  }
}
