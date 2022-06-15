//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ProblemEmbedded {
  /// Returns a new [ProblemEmbedded] instance.
  ProblemEmbedded({
    this.errors = const [],
  });

  /// Returns a new [ProblemEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ProblemEmbedded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ProblemEmbedded(
      errors: Problem.listFromJson(json[r'errors']),
    );
  }

  List<Problem>? errors;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ProblemEmbedded &&
        DeepCollectionEquality.unordered().equals(errors, other.errors);
  }

  @override
  int get hashCode => (errors == null ? 0 : errors.hashCode);

  static List<ProblemEmbedded> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ProblemEmbedded>[];
    }
    return json
        .map((value) {
          return ProblemEmbedded.fromJson(value);
        })
        .whereType<ProblemEmbedded>()
        .toList();
  }

  static Map<String, ProblemEmbedded> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ProblemEmbedded>{};
    }

    final map = json.map((key, value) => MapEntry<String, ProblemEmbedded?>(
        key, ProblemEmbedded.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ProblemEmbedded>;
  }

  // maps a json object with a list of ProblemEmbedded-objects as value to a dart map
  static Map<String, List<ProblemEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ProblemEmbedded>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ProblemEmbedded.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ProblemEmbedded[errors=$errors]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (errors != null) r'errors': errors,
    };
  }
}
