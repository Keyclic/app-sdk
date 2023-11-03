//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OrganizationPaginationAllOf {
  /// Returns a new [OrganizationPaginationAllOf] instance.
  OrganizationPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [OrganizationPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationPaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OrganizationPaginationAllOf(
      embedded: OrganizationCollection.fromJson(json[r'_embedded']),
    );
  }

  OrganizationCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationPaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<OrganizationPaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OrganizationPaginationAllOf>[];
    }

    return json.fold(<OrganizationPaginationAllOf>[],
        (List<OrganizationPaginationAllOf> previousValue, element) {
      final OrganizationPaginationAllOf? object =
          OrganizationPaginationAllOf.fromJson(element);
      if (object is OrganizationPaginationAllOf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OrganizationPaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OrganizationPaginationAllOf>{};
    }

    return json.entries.fold(<String, OrganizationPaginationAllOf>{},
        (Map<String, OrganizationPaginationAllOf> previousValue, element) {
      final OrganizationPaginationAllOf? object =
          OrganizationPaginationAllOf.fromJson(element.value);
      if (object is OrganizationPaginationAllOf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OrganizationPaginationAllOf-objects as value to a dart map
  static Map<String, List<OrganizationPaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OrganizationPaginationAllOf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OrganizationPaginationAllOf>>(
          key, OrganizationPaginationAllOf.listFromJson(value));
    });
  }

  @override
  String toString() => 'OrganizationPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && embedded != null) ||
          (keys?.contains(r'embedded') ?? false))
        r'_embedded': embedded?.toJson(),
    };
  }
}
