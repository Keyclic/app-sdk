part of keyclic_sdk_api.api;

class NotePatch {
  NotePatch({
    this.text,
  });

  factory NotePatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return NotePatch(
      text: json['text'] is Iterable
          ? List<Map<String, dynamic>>.from(json['text'])
          : [],
    );
  }

  List<Map<String, dynamic>> text;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is NotePatch &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(text, other.text);
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

    return hashCode;
  }

  static List<NotePatch> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => NotePatch.fromJson(value))?.toList() ??
        <NotePatch>[];
  }

  static Map<String, NotePatch> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, NotePatch>((String key, dynamic value) {
          return MapEntry(key, NotePatch.fromJson(value));
        }) ??
        <String, NotePatch>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (text != null) 'text': text,
    };
  }

  @override
  String toString() {
    return 'NotePatch[text=$text, ]';
  }
}
