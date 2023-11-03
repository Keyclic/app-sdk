//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class TemplatePaginationAllOf {
  /// Returns a new [TemplatePaginationAllOf] instance.
  TemplatePaginationAllOf({
    this.embedded,
  });

  /// Returns a new [TemplatePaginationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TemplatePaginationAllOf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TemplatePaginationAllOf(
      embedded: TemplateCollection.fromJson(json[r'_embedded']),
    );
  }

  TemplateCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is TemplatePaginationAllOf && other.embedded == embedded;
  }

  @override
  int get hashCode => (embedded == null ? 0 : embedded.hashCode);

  static List<TemplatePaginationAllOf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <TemplatePaginationAllOf>[];
    }

    return json.fold(<TemplatePaginationAllOf>[],
        (List<TemplatePaginationAllOf> previousValue, element) {
      final TemplatePaginationAllOf? object =
          TemplatePaginationAllOf.fromJson(element);
      if (object is TemplatePaginationAllOf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, TemplatePaginationAllOf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, TemplatePaginationAllOf>{};
    }

    return json.entries.fold(<String, TemplatePaginationAllOf>{},
        (Map<String, TemplatePaginationAllOf> previousValue, element) {
      final TemplatePaginationAllOf? object =
          TemplatePaginationAllOf.fromJson(element.value);
      if (object is TemplatePaginationAllOf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of TemplatePaginationAllOf-objects as value to a dart map
  static Map<String, List<TemplatePaginationAllOf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<TemplatePaginationAllOf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<TemplatePaginationAllOf>>(
          key, TemplatePaginationAllOf.listFromJson(value));
    });
  }

  @override
  String toString() => 'TemplatePaginationAllOf[embedded=$embedded]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && embedded != null) ||
          (keys?.contains(r'embedded') ?? false))
        r'_embedded': embedded?.toJson(),
    };
  }
}
