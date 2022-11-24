//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationPaginationAllOf {
  /// Returns a new [OperationPaginationAllOf] instance.
  OperationPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [OperationPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationPaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OperationPaginationAllOf(
      embedded: OperationCollection.fromJson(json[r'_embedded']),
    );
  }

  OperationCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationPaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<OperationPaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OperationPaginationAllOf>[];
    }

    return json.fold(<OperationPaginationAllOf>[],
        (List<OperationPaginationAllOf> previousValue, element) {
      final OperationPaginationAllOf? object =
          OperationPaginationAllOf.fromJson(element);
      if (object is OperationPaginationAllOf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OperationPaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationPaginationAllOf>{};
    }

    return json.entries.fold(<String, OperationPaginationAllOf>{},
        (Map<String, OperationPaginationAllOf> previousValue, element) {
      final OperationPaginationAllOf? object =
          OperationPaginationAllOf.fromJson(element.value);
      if (object is OperationPaginationAllOf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OperationPaginationAllOf-objects as value to a dart map
  static Map<String, List<OperationPaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OperationPaginationAllOf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OperationPaginationAllOf>>(
          key, OperationPaginationAllOf.listFromJson(value));
    });
  }

  @override
  String toString() => 'OperationPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
