part of keyclic_sdk_api.api;

class ProblemEmbedded {
  ProblemEmbedded({
    this.errors,
  });

  factory ProblemEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ProblemEmbedded(
      errors: Problem.listFromJson(json['errors']),
    );
  }

  List<Problem> errors;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ProblemEmbedded &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(errors, other.errors);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (errors is List && errors.isNotEmpty) {
      hashCode ^= errors
          .map((Problem element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<ProblemEmbedded> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ProblemEmbedded.fromJson(value))
            ?.toList() ??
        <ProblemEmbedded>[];
  }

  static Map<String, ProblemEmbedded> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, ProblemEmbedded>((String key, dynamic value) {
          return MapEntry(key, ProblemEmbedded.fromJson(value));
        }) ??
        <String, ProblemEmbedded>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (errors != null) 'errors': errors,
    };
  }

  @override
  String toString() {
    return 'ProblemEmbedded[errors=$errors, ]';
  }
}
