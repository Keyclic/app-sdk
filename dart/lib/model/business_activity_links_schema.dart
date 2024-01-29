//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BusinessActivityLinksSchema {
  /// Returns a new [BusinessActivityLinksSchema] instance.
  BusinessActivityLinksSchema({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [BusinessActivityLinksSchema] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BusinessActivityLinksSchema? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessActivityLinksSchema(
      href: json[r'href'],
      iriTemplate:
          BusinessActivityLinksSchemaIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the schema associated to the given businessactivity.
  String? href;

  BusinessActivityLinksSchemaIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivityLinksSchema &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<BusinessActivityLinksSchema> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <BusinessActivityLinksSchema>[];
    }

    return json.fold(<BusinessActivityLinksSchema>[],
        (List<BusinessActivityLinksSchema> previousValue, element) {
      final BusinessActivityLinksSchema? object =
          BusinessActivityLinksSchema.fromJson(element);
      if (object is BusinessActivityLinksSchema) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BusinessActivityLinksSchema> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BusinessActivityLinksSchema>{};
    }

    return json.entries.fold(<String, BusinessActivityLinksSchema>{},
        (Map<String, BusinessActivityLinksSchema> previousValue, element) {
      final BusinessActivityLinksSchema? object =
          BusinessActivityLinksSchema.fromJson(element.value);
      if (object is BusinessActivityLinksSchema) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BusinessActivityLinksSchema-objects as value to a dart map
  static Map<String, List<BusinessActivityLinksSchema>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BusinessActivityLinksSchema>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BusinessActivityLinksSchema>>(
          key, BusinessActivityLinksSchema.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'BusinessActivityLinksSchema[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'href')) r'href': href,
      if (keys == null ||
          keys.any((key) => RegExp(r'^iriTemplate\.').hasMatch(key)))
        r'iriTemplate': iriTemplate?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^iriTemplate\.'))) {
            previousValue.add(element.split(RegExp(r'^iriTemplate\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
