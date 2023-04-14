//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ExternalServicePaginationAllOf {
  /// Returns a new [ExternalServicePaginationAllOf] instance.
  ExternalServicePaginationAllOf({
    this.embedded,
  });

  /// Returns a new [ExternalServicePaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ExternalServicePaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ExternalServicePaginationAllOf(
      embedded: ExternalServiceCollection.fromJson(json[r'_embedded']),
    );
  }

  ExternalServiceCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalServicePaginationAllOf &&
        other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<ExternalServicePaginationAllOf> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ExternalServicePaginationAllOf>[];
    }

    return json.fold(<ExternalServicePaginationAllOf>[],
        (List<ExternalServicePaginationAllOf> previousValue, element) {
      final ExternalServicePaginationAllOf? object =
          ExternalServicePaginationAllOf.fromJson(element);
      if (object is ExternalServicePaginationAllOf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ExternalServicePaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ExternalServicePaginationAllOf>{};
    }

    return json.entries.fold(<String, ExternalServicePaginationAllOf>{},
        (Map<String, ExternalServicePaginationAllOf> previousValue, element) {
      final ExternalServicePaginationAllOf? object =
          ExternalServicePaginationAllOf.fromJson(element.value);
      if (object is ExternalServicePaginationAllOf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ExternalServicePaginationAllOf-objects as value to a dart map
  static Map<String, List<ExternalServicePaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ExternalServicePaginationAllOf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ExternalServicePaginationAllOf>>(
          key, ExternalServicePaginationAllOf.listFromJson(value));
    });
  }

  @override
  String toString() => 'ExternalServicePaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
