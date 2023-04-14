//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PublicationPaginationAllOf {
  /// Returns a new [PublicationPaginationAllOf] instance.
  PublicationPaginationAllOf({
    this.embedded,
  });

  /// Returns a new [PublicationPaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PublicationPaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PublicationPaginationAllOf(
      embedded: PublicationCollection.fromJson(json[r'_embedded']),
    );
  }

  PublicationCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationPaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<PublicationPaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PublicationPaginationAllOf>[];
    }

    return json.fold(<PublicationPaginationAllOf>[],
        (List<PublicationPaginationAllOf> previousValue, element) {
      final PublicationPaginationAllOf? object =
          PublicationPaginationAllOf.fromJson(element);
      if (object is PublicationPaginationAllOf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PublicationPaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PublicationPaginationAllOf>{};
    }

    return json.entries.fold(<String, PublicationPaginationAllOf>{},
        (Map<String, PublicationPaginationAllOf> previousValue, element) {
      final PublicationPaginationAllOf? object =
          PublicationPaginationAllOf.fromJson(element.value);
      if (object is PublicationPaginationAllOf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PublicationPaginationAllOf-objects as value to a dart map
  static Map<String, List<PublicationPaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PublicationPaginationAllOf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PublicationPaginationAllOf>>(
          key, PublicationPaginationAllOf.listFromJson(value));
    });
  }

  @override
  String toString() => 'PublicationPaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
