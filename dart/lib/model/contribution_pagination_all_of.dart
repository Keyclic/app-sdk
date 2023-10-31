//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ContributionPaginationAllOf {
  /// Returns a new [ContributionPaginationAllOf] instance.
  ContributionPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [ContributionPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContributionPaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ContributionPaginationAllOf(
      embedded: ContributionCollection.fromJson(json[r'_embedded']),
    );
  }

  ContributionCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContributionPaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<ContributionPaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ContributionPaginationAllOf>[];
    }

    return json.fold(<ContributionPaginationAllOf>[],
        (List<ContributionPaginationAllOf> previousValue, element) {
      final ContributionPaginationAllOf? object =
          ContributionPaginationAllOf.fromJson(element);
      if (object is ContributionPaginationAllOf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContributionPaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContributionPaginationAllOf>{};
    }

    return json.entries.fold(<String, ContributionPaginationAllOf>{},
        (Map<String, ContributionPaginationAllOf> previousValue, element) {
      final ContributionPaginationAllOf? object =
          ContributionPaginationAllOf.fromJson(element.value);
      if (object is ContributionPaginationAllOf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContributionPaginationAllOf-objects as value to a dart map
  static Map<String, List<ContributionPaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContributionPaginationAllOf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContributionPaginationAllOf>>(
          key, ContributionPaginationAllOf.listFromJson(value));
    });
  }

  @override
  String toString() => 'ContributionPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && embedded != null) ||
          (keys?.contains(r'embedded') ?? false))
        r'_embedded': embedded?.toJson(),
    };
  }
}
