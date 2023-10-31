//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ServicePaginationAllOf {
  /// Returns a new [ServicePaginationAllOf] instance.
  ServicePaginationAllOf({
    this.embedded,
  });

  /// Returns a new [ServicePaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ServicePaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ServicePaginationAllOf(
      embedded: ServiceCollection.fromJson(json[r'_embedded']),
    );
  }

  ServiceCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ServicePaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<ServicePaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ServicePaginationAllOf>[];
    }

    return json.fold(<ServicePaginationAllOf>[],
        (List<ServicePaginationAllOf> previousValue, element) {
      final ServicePaginationAllOf? object =
          ServicePaginationAllOf.fromJson(element);
      if (object is ServicePaginationAllOf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ServicePaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ServicePaginationAllOf>{};
    }

    return json.entries.fold(<String, ServicePaginationAllOf>{},
        (Map<String, ServicePaginationAllOf> previousValue, element) {
      final ServicePaginationAllOf? object =
          ServicePaginationAllOf.fromJson(element.value);
      if (object is ServicePaginationAllOf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ServicePaginationAllOf-objects as value to a dart map
  static Map<String, List<ServicePaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ServicePaginationAllOf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ServicePaginationAllOf>>(
          key, ServicePaginationAllOf.listFromJson(value));
    });
  }

  @override
  String toString() => 'ServicePaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && embedded != null) ||
          (keys?.contains(r'embedded') ?? false))
        r'_embedded': embedded?.toJson(),
    };
  }
}
