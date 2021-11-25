part of keyclic_sdk_api.api;

class Problem {
  Problem({
    this.type,
    this.title,
    this.detail,
    this.embedded,
  });

  factory Problem.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Problem(
      type: json['type'],
      title: json['title'],
      detail: json['detail'],
      embedded: ProblemEmbedded.fromJson(json['_embedded']),
    );
  }

  String type;

  String title;

  String detail;

  ProblemEmbedded embedded;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Problem &&
        runtimeType == other.runtimeType &&
        type == other.type &&
        title == other.title &&
        detail == other.detail &&
        embedded == other.embedded;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= title?.hashCode ?? 0;
    hashCode ^= detail?.hashCode ?? 0;
    hashCode ^= embedded?.hashCode ?? 0;

    return hashCode;
  }

  static List<Problem> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Problem.fromJson(value))?.toList() ??
        <Problem>[];
  }

  static Map<String, Problem> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Problem>((String key, dynamic value) {
          return MapEntry(key, Problem.fromJson(value));
        }) ??
        <String, Problem>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (type != null) 'type': type,
      if (title != null) 'title': title,
      if (detail != null) 'detail': detail,
      if (embedded != null) '_embedded': embedded.toJson(),
    };
  }

  @override
  String toString() {
    return 'Problem[type=$type, title=$title, detail=$detail, embedded=$embedded, ]';
  }
}
