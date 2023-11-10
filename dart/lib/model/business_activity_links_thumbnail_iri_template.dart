//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BusinessActivityLinksThumbnailIriTemplate {
  /// Returns a new [BusinessActivityLinksThumbnailIriTemplate] instance.
  BusinessActivityLinksThumbnailIriTemplate({
    this.mapping,
  });

  /// Returns a new [BusinessActivityLinksThumbnailIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BusinessActivityLinksThumbnailIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessActivityLinksThumbnailIriTemplate(
      mapping: BusinessActivityLinksImageIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  BusinessActivityLinksImageIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivityLinksThumbnailIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<BusinessActivityLinksThumbnailIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <BusinessActivityLinksThumbnailIriTemplate>[];
    }

    return json.fold(<BusinessActivityLinksThumbnailIriTemplate>[],
        (List<BusinessActivityLinksThumbnailIriTemplate> previousValue,
            element) {
      final BusinessActivityLinksThumbnailIriTemplate? object =
          BusinessActivityLinksThumbnailIriTemplate.fromJson(element);
      if (object is BusinessActivityLinksThumbnailIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BusinessActivityLinksThumbnailIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BusinessActivityLinksThumbnailIriTemplate>{};
    }

    return json.entries.fold(
        <String, BusinessActivityLinksThumbnailIriTemplate>{},
        (Map<String, BusinessActivityLinksThumbnailIriTemplate> previousValue,
            element) {
      final BusinessActivityLinksThumbnailIriTemplate? object =
          BusinessActivityLinksThumbnailIriTemplate.fromJson(element.value);
      if (object is BusinessActivityLinksThumbnailIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BusinessActivityLinksThumbnailIriTemplate-objects as value to a dart map
  static Map<String, List<BusinessActivityLinksThumbnailIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BusinessActivityLinksThumbnailIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BusinessActivityLinksThumbnailIriTemplate>>(
          key, BusinessActivityLinksThumbnailIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'BusinessActivityLinksThumbnailIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
