//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BusinessActivityPaginationAllOf {
  /// Returns a new [BusinessActivityPaginationAllOf] instance.
  BusinessActivityPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [BusinessActivityPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BusinessActivityPaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessActivityPaginationAllOf(
      embedded: BusinessActivityCollection.fromJson(json[r'_embedded']),
    );
  }

  BusinessActivityCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivityPaginationAllOf &&
        other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<BusinessActivityPaginationAllOf> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <BusinessActivityPaginationAllOf>[];
    }

    return json.fold(<BusinessActivityPaginationAllOf>[],
        (List<BusinessActivityPaginationAllOf> previousValue, element) {
      final BusinessActivityPaginationAllOf? object =
          BusinessActivityPaginationAllOf.fromJson(element);
      if (object is BusinessActivityPaginationAllOf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BusinessActivityPaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BusinessActivityPaginationAllOf>{};
    }

    return json.entries.fold(<String, BusinessActivityPaginationAllOf>{},
        (Map<String, BusinessActivityPaginationAllOf> previousValue, element) {
      final BusinessActivityPaginationAllOf? object =
          BusinessActivityPaginationAllOf.fromJson(element.value);
      if (object is BusinessActivityPaginationAllOf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BusinessActivityPaginationAllOf-objects as value to a dart map
  static Map<String, List<BusinessActivityPaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BusinessActivityPaginationAllOf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BusinessActivityPaginationAllOf>>(
          key, BusinessActivityPaginationAllOf.listFromJson(value));
    });
  }

  @override
  String toString() => 'BusinessActivityPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && embedded != null) ||
          (keys?.contains(r'embedded') ?? false))
        r'_embedded': embedded?.toJson(),
    };
  }
}
