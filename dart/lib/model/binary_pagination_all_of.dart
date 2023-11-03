//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BinaryPaginationAllOf {
  /// Returns a new [BinaryPaginationAllOf] instance.
  BinaryPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [BinaryPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BinaryPaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BinaryPaginationAllOf(
      embedded: BinaryCollection.fromJson(json[r'_embedded']),
    );
  }

  BinaryCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BinaryPaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<BinaryPaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <BinaryPaginationAllOf>[];
    }

    return json.fold(<BinaryPaginationAllOf>[],
        (List<BinaryPaginationAllOf> previousValue, element) {
      final BinaryPaginationAllOf? object =
          BinaryPaginationAllOf.fromJson(element);
      if (object is BinaryPaginationAllOf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BinaryPaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BinaryPaginationAllOf>{};
    }

    return json.entries.fold(<String, BinaryPaginationAllOf>{},
        (Map<String, BinaryPaginationAllOf> previousValue, element) {
      final BinaryPaginationAllOf? object =
          BinaryPaginationAllOf.fromJson(element.value);
      if (object is BinaryPaginationAllOf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BinaryPaginationAllOf-objects as value to a dart map
  static Map<String, List<BinaryPaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BinaryPaginationAllOf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BinaryPaginationAllOf>>(
          key, BinaryPaginationAllOf.listFromJson(value));
    });
  }

  @override
  String toString() => 'BinaryPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && embedded != null) ||
          (keys?.contains(r'embedded') ?? false))
        r'_embedded': embedded?.toJson(),
    };
  }
}
