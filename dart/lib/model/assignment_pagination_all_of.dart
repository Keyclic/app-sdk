//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class AssignmentPaginationAllOf {
  /// Returns a new [AssignmentPaginationAllOf] instance.
  AssignmentPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [AssignmentPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssignmentPaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AssignmentPaginationAllOf(
      embedded: AssignmentCollection.fromJson(json[r'_embedded']),
    );
  }

  AssignmentCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentPaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<AssignmentPaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <AssignmentPaginationAllOf>[];
    }

    return json.fold(<AssignmentPaginationAllOf>[],
        (List<AssignmentPaginationAllOf> previousValue, element) {
      final AssignmentPaginationAllOf? object =
          AssignmentPaginationAllOf.fromJson(element);
      if (object is AssignmentPaginationAllOf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AssignmentPaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignmentPaginationAllOf>{};
    }

    return json.entries.fold(<String, AssignmentPaginationAllOf>{},
        (Map<String, AssignmentPaginationAllOf> previousValue, element) {
      final AssignmentPaginationAllOf? object =
          AssignmentPaginationAllOf.fromJson(element.value);
      if (object is AssignmentPaginationAllOf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AssignmentPaginationAllOf-objects as value to a dart map
  static Map<String, List<AssignmentPaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AssignmentPaginationAllOf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AssignmentPaginationAllOf>>(
          key, AssignmentPaginationAllOf.listFromJson(value));
    });
  }

  @override
  String toString() => 'AssignmentPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && embedded != null) ||
          (keys?.contains(r'embedded') ?? false))
        r'_embedded': embedded?.toJson(),
    };
  }
}
