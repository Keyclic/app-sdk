//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlacePaginationAllOf {
  /// Returns a new [PlacePaginationAllOf] instance.
  PlacePaginationAllOf({
    this.embedded,
  });

  /// Returns a new [PlacePaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlacePaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlacePaginationAllOf(
      embedded: PlaceCollection.fromJson(json[r'_embedded']),
    );
  }

  PlaceCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlacePaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<PlacePaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PlacePaginationAllOf>[];
    }

    return json.fold(<PlacePaginationAllOf>[],
        (List<PlacePaginationAllOf> previousValue, element) {
      final PlacePaginationAllOf? object =
          PlacePaginationAllOf.fromJson(element);
      if (object is PlacePaginationAllOf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlacePaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlacePaginationAllOf>{};
    }

    return json.entries.fold(<String, PlacePaginationAllOf>{},
        (Map<String, PlacePaginationAllOf> previousValue, element) {
      final PlacePaginationAllOf? object =
          PlacePaginationAllOf.fromJson(element.value);
      if (object is PlacePaginationAllOf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlacePaginationAllOf-objects as value to a dart map
  static Map<String, List<PlacePaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlacePaginationAllOf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlacePaginationAllOf>>(
          key, PlacePaginationAllOf.listFromJson(value));
    });
  }

  @override
  String toString() => 'PlacePaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
