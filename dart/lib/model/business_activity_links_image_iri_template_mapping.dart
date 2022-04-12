//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class BusinessActivityLinksImageIriTemplateMapping {
  /// Returns a new [BusinessActivityLinksImageIriTemplateMapping] instance.
  BusinessActivityLinksImageIriTemplateMapping({
    this.businessActivity,
  });

  /// Returns a new [BusinessActivityLinksImageIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory BusinessActivityLinksImageIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BusinessActivityLinksImageIriTemplateMapping(
      businessActivity: json[r'businessActivity'],
    );
  }

  String businessActivity;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivityLinksImageIriTemplateMapping &&
        other.businessActivity == businessActivity;
  }

  @override
  int get hashCode =>
      (businessActivity == null ? 0 : businessActivity.hashCode);

  static List<BusinessActivityLinksImageIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return <BusinessActivityLinksImageIriTemplateMapping>[
      if (json is List)
        for (dynamic value in json)
          BusinessActivityLinksImageIriTemplateMapping.fromJson(value),
    ];
  }

  static Map<String, BusinessActivityLinksImageIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return <String, BusinessActivityLinksImageIriTemplateMapping>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: BusinessActivityLinksImageIriTemplateMapping.fromJson(
              entry.value),
    };
  }

  // maps a json object with a list of BusinessActivityLinksImageIriTemplateMapping-objects as value to a dart map
  static Map<String, List<BusinessActivityLinksImageIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic> json) {
    return <String, List<BusinessActivityLinksImageIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: BusinessActivityLinksImageIriTemplateMapping.listFromJson(
              entry.value),
    };
  }

  @override
  String toString() =>
      'BusinessActivityLinksImageIriTemplateMapping[businessActivity=$businessActivity]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (businessActivity != null) r'businessActivity': businessActivity,
    };
  }
}
