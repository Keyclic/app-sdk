//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlanPaginationAllOf {
  /// Returns a new [PlanPaginationAllOf] instance.
  PlanPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [PlanPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlanPaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlanPaginationAllOf(
      embedded: PlanCollection.fromJson(json[r'_embedded']),
    );
  }

  PlanCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlanPaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<PlanPaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PlanPaginationAllOf>[];
    }

    return json.fold(<PlanPaginationAllOf>[],
        (List<PlanPaginationAllOf> previousValue, element) {
      final PlanPaginationAllOf? object = PlanPaginationAllOf.fromJson(element);
      if (object is PlanPaginationAllOf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlanPaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlanPaginationAllOf>{};
    }

    return json.entries.fold(<String, PlanPaginationAllOf>{},
        (Map<String, PlanPaginationAllOf> previousValue, element) {
      final PlanPaginationAllOf? object =
          PlanPaginationAllOf.fromJson(element.value);
      if (object is PlanPaginationAllOf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlanPaginationAllOf-objects as value to a dart map
  static Map<String, List<PlanPaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlanPaginationAllOf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlanPaginationAllOf>>(
          key, PlanPaginationAllOf.listFromJson(value));
    });
  }

  @override
  String toString() => 'PlanPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
