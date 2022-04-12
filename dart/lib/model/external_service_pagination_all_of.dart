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
    return json
        .map((value) {
          return ExternalServicePaginationAllOf.fromJson(value);
        })
        .whereType<ExternalServicePaginationAllOf>()
        .toList();
  }

  static Map<String, ExternalServicePaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ExternalServicePaginationAllOf>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ExternalServicePaginationAllOf?>(
            key, ExternalServicePaginationAllOf.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ExternalServicePaginationAllOf>;
  }

  // maps a json object with a list of ExternalServicePaginationAllOf-objects as value to a dart map
  static Map<String, List<ExternalServicePaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ExternalServicePaginationAllOf>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ExternalServicePaginationAllOf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ExternalServicePaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
