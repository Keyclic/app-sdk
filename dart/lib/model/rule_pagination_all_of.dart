//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class RulePaginationAllOf {
  /// Returns a new [RulePaginationAllOf] instance.
  RulePaginationAllOf({
    this.embedded,
  });

  /// Returns a new [RulePaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RulePaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RulePaginationAllOf(
      embedded: RuleCollection.fromJson(json[r'_embedded']),
    );
  }

  RuleCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RulePaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<RulePaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <RulePaginationAllOf>[];
    }

    return json.fold(<RulePaginationAllOf>[],
        (List<RulePaginationAllOf> previousValue, element) {
      final RulePaginationAllOf? object = RulePaginationAllOf.fromJson(element);
      if (object is RulePaginationAllOf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, RulePaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RulePaginationAllOf>{};
    }

    return json.entries.fold(<String, RulePaginationAllOf>{},
        (Map<String, RulePaginationAllOf> previousValue, element) {
      final RulePaginationAllOf? object =
          RulePaginationAllOf.fromJson(element.value);
      if (object is RulePaginationAllOf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of RulePaginationAllOf-objects as value to a dart map
  static Map<String, List<RulePaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<RulePaginationAllOf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<RulePaginationAllOf>>(
          key, RulePaginationAllOf.listFromJson(value));
    });
  }

  @override
  String toString() => 'RulePaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && embedded != null) ||
          (keys?.contains(r'embedded') ?? false))
        r'_embedded': embedded?.toJson(),
    };
  }
}
