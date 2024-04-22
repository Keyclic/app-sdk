//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ProblemEmbedded {
  /// Returns a new [ProblemEmbedded] instance.
  ProblemEmbedded({
    this.errors,
  });

  /// Returns a new [ProblemEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ProblemEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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

  static List<ProblemEmbedded> listFromJson(Iterable? json) {
    if (json == null) {
      return <ProblemEmbedded>[];
    }

    return json.fold(<ProblemEmbedded>[],
        (List<ProblemEmbedded> previousValue, element) {
      final ProblemEmbedded? object = ProblemEmbedded.fromJson(element);
      if (object is ProblemEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ProblemEmbedded> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ProblemEmbedded>{};
    }

    return json.entries.fold(<String, ProblemEmbedded>{},
        (Map<String, ProblemEmbedded> previousValue, element) {
      final ProblemEmbedded? object = ProblemEmbedded.fromJson(element.value);
      if (object is ProblemEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ProblemEmbedded-objects as value to a dart map
  static Map<String, List<ProblemEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ProblemEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ProblemEmbedded>>(
          key, ProblemEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'ProblemEmbedded[errors=$errors]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'errors')) r'errors': errors,
    };
  }
}
