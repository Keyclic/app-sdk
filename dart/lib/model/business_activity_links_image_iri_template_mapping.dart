//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BusinessActivityLinksImageIriTemplateMapping {
  /// Returns a new [BusinessActivityLinksImageIriTemplateMapping] instance.
  BusinessActivityLinksImageIriTemplateMapping({
    this.businessActivity,
  });

  /// Returns a new [BusinessActivityLinksImageIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BusinessActivityLinksImageIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessActivityLinksImageIriTemplateMapping(
      businessActivity: json[r'businessActivity'],
    );
  }

  String? businessActivity;

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
      List<dynamic>? json) {
    if (json == null) {
      return <BusinessActivityLinksImageIriTemplateMapping>[];
    }
    return json
        .map((value) {
          return BusinessActivityLinksImageIriTemplateMapping.fromJson(value);
        })
        .whereType<BusinessActivityLinksImageIriTemplateMapping>()
        .toList();
  }

  static Map<String, BusinessActivityLinksImageIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BusinessActivityLinksImageIriTemplateMapping>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, BusinessActivityLinksImageIriTemplateMapping?>(
            key, BusinessActivityLinksImageIriTemplateMapping.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, BusinessActivityLinksImageIriTemplateMapping>;
  }

  // maps a json object with a list of BusinessActivityLinksImageIriTemplateMapping-objects as value to a dart map
  static Map<String, List<BusinessActivityLinksImageIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<BusinessActivityLinksImageIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json!.entries)
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
