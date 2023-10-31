//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class SectionPaginationAllOf {
  /// Returns a new [SectionPaginationAllOf] instance.
  SectionPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [SectionPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SectionPaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SectionPaginationAllOf(
      embedded: SectionCollection.fromJson(json[r'_embedded']),
    );
  }

  SectionCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SectionPaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<SectionPaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <SectionPaginationAllOf>[];
    }

    return json.fold(<SectionPaginationAllOf>[],
        (List<SectionPaginationAllOf> previousValue, element) {
      final SectionPaginationAllOf? object =
          SectionPaginationAllOf.fromJson(element);
      if (object is SectionPaginationAllOf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, SectionPaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SectionPaginationAllOf>{};
    }

    return json.entries.fold(<String, SectionPaginationAllOf>{},
        (Map<String, SectionPaginationAllOf> previousValue, element) {
      final SectionPaginationAllOf? object =
          SectionPaginationAllOf.fromJson(element.value);
      if (object is SectionPaginationAllOf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of SectionPaginationAllOf-objects as value to a dart map
  static Map<String, List<SectionPaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<SectionPaginationAllOf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<SectionPaginationAllOf>>(
          key, SectionPaginationAllOf.listFromJson(value));
    });
  }

  @override
  String toString() => 'SectionPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && embedded != null) ||
          (keys?.contains(r'embedded') ?? false))
        r'_embedded': embedded?.toJson(),
    };
  }
}
