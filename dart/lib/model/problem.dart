//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

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
  factory Problem.fromJson(Map<String, dynamic> json) {
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

  String type;

  String title;

  String detail;

  ProblemEmbedded embedded;

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

  static List<Problem> listFromJson(List<dynamic> json) {
    return <Problem>[
      if (json is List)
        for (dynamic value in json) Problem.fromJson(value),
    ];
  }

  static Map<String, Problem> mapFromJson(Map<String, dynamic> json) {
    return <String, Problem>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Problem.fromJson(entry.value),
    };
  }

  // maps a json object with a list of Problem-objects as value to a dart map
  static Map<String, List<Problem>> mapListFromJson(Map<String, dynamic> json) {
    return <String, List<Problem>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Problem.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'Problem[type=$type, title=$title, detail=$detail, embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (type != null) r'type': type,
      if (title != null) r'title': title,
      if (detail != null) r'detail': detail,
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
