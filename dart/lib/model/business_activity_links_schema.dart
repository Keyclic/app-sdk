//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class BusinessActivityLinksSchema {
  /// Returns a new [BusinessActivityLinksSchema] instance.
  BusinessActivityLinksSchema({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [BusinessActivityLinksSchema] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory BusinessActivityLinksSchema.fromJson(Map<String, dynamic> json) {
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
  String href;

  BusinessActivityLinksSchemaIriTemplate iriTemplate;

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

  static List<BusinessActivityLinksSchema> listFromJson(List<dynamic> json) {
    return <BusinessActivityLinksSchema>[
      if (json is List)
        for (dynamic value in json) BusinessActivityLinksSchema.fromJson(value),
    ];
  }

  static Map<String, BusinessActivityLinksSchema> mapFromJson(
      Map<String, dynamic> json) {
    return <String, BusinessActivityLinksSchema>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: BusinessActivityLinksSchema.fromJson(entry.value),
    };
  }

  // maps a json object with a list of BusinessActivityLinksSchema-objects as value to a dart map
  static Map<String, List<BusinessActivityLinksSchema>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<BusinessActivityLinksSchema>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: BusinessActivityLinksSchema.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'BusinessActivityLinksSchema[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
