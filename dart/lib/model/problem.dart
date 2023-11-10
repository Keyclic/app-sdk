//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Problem {
  /// Returns a new [Problem] instance.
  Problem({
    this.type,
    this.title,
    this.detail,
    this.embedded,
  });

  /// Returns a new [Problem] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Problem? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Problem(
      type: json[r'type'],
      title: json[r'title'],
      detail: json[r'detail'],
      embedded: ProblemEmbedded.fromJson(json[r'_embedded']),
    );
  }

  String? type;

  String? title;

  String? detail;

  ProblemEmbedded? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Problem &&
        other.type == type &&
        other.title == title &&
        other.detail == detail &&
        other.embedded == embedded;
  }

  @override
  int get hashCode =>
      (type == null ? 0 : type.hashCode) +
      (title == null ? 0 : title.hashCode) +
      (detail == null ? 0 : detail.hashCode) +
      (embedded == null ? 0 : embedded.hashCode);

  static List<Problem> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Problem>[];
    }

    return json.fold(<Problem>[], (List<Problem> previousValue, element) {
      final Problem? object = Problem.fromJson(element);
      if (object is Problem) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Problem> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Problem>{};
    }

    return json.entries.fold(<String, Problem>{},
        (Map<String, Problem> previousValue, element) {
      final Problem? object = Problem.fromJson(element.value);
      if (object is Problem) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Problem-objects as value to a dart map
  static Map<String, List<Problem>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Problem>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Problem>>(key, Problem.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Problem[type=$type, title=$title, detail=$detail, embedded=$embedded]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && type != null) || (keys?.contains(r'type') ?? false))
        r'type': type,
      if ((keys == null && title != null) ||
          (keys?.contains(r'title') ?? false))
        r'title': title,
      if ((keys == null && detail != null) ||
          (keys?.contains(r'detail') ?? false))
        r'detail': detail,
      if ((keys == null && embedded != null) ||
          (keys?.contains(r'embedded') ?? false))
        r'_embedded': embedded?.toJson(),
    };
  }
}
