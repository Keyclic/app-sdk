//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OccupantPaginationAllOf {
  /// Returns a new [OccupantPaginationAllOf] instance.
  OccupantPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [OccupantPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OccupantPaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OccupantPaginationAllOf(
      embedded: OccupantCollection.fromJson(json[r'_embedded']),
    );
  }

  OccupantCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantPaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<OccupantPaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OccupantPaginationAllOf>[];
    }

    return json.fold(<OccupantPaginationAllOf>[],
        (List<OccupantPaginationAllOf> previousValue, element) {
      final OccupantPaginationAllOf? object =
          OccupantPaginationAllOf.fromJson(element);
      if (object is OccupantPaginationAllOf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OccupantPaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OccupantPaginationAllOf>{};
    }

    return json.entries.fold(<String, OccupantPaginationAllOf>{},
        (Map<String, OccupantPaginationAllOf> previousValue, element) {
      final OccupantPaginationAllOf? object =
          OccupantPaginationAllOf.fromJson(element.value);
      if (object is OccupantPaginationAllOf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OccupantPaginationAllOf-objects as value to a dart map
  static Map<String, List<OccupantPaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OccupantPaginationAllOf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OccupantPaginationAllOf>>(
          key, OccupantPaginationAllOf.listFromJson(value));
    });
  }

  @override
  String toString() => 'OccupantPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && embedded != null) ||
          (keys?.contains(r'embedded') ?? false))
        r'_embedded': embedded?.toJson(),
    };
  }
}
