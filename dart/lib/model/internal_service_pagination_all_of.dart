//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class InternalServicePaginationAllOf {
  /// Returns a new [InternalServicePaginationAllOf] instance.
  InternalServicePaginationAllOf({
    this.embedded,
  });

  /// Returns a new [InternalServicePaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InternalServicePaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalServicePaginationAllOf(
      embedded: InternalServiceCollection.fromJson(json[r'_embedded']),
    );
  }

  InternalServiceCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServicePaginationAllOf &&
        other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<InternalServicePaginationAllOf> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <InternalServicePaginationAllOf>[];
    }

    return json.fold(<InternalServicePaginationAllOf>[],
        (List<InternalServicePaginationAllOf> previousValue, element) {
      final InternalServicePaginationAllOf? object =
          InternalServicePaginationAllOf.fromJson(element);
      if (object is InternalServicePaginationAllOf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, InternalServicePaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, InternalServicePaginationAllOf>{};
    }

    return json.entries.fold(<String, InternalServicePaginationAllOf>{},
        (Map<String, InternalServicePaginationAllOf> previousValue, element) {
      final InternalServicePaginationAllOf? object =
          InternalServicePaginationAllOf.fromJson(element.value);
      if (object is InternalServicePaginationAllOf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of InternalServicePaginationAllOf-objects as value to a dart map
  static Map<String, List<InternalServicePaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<InternalServicePaginationAllOf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<InternalServicePaginationAllOf>>(
          key, InternalServicePaginationAllOf.listFromJson(value));
    });
  }

  @override
  String toString() => 'InternalServicePaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
