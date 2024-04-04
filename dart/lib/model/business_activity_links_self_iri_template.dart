//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BusinessActivityLinksSelfIriTemplate {
  /// Returns a new [BusinessActivityLinksSelfIriTemplate] instance.
  BusinessActivityLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [BusinessActivityLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BusinessActivityLinksSelfIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return BusinessActivityLinksSelfIriTemplate(
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

    return other is BusinessActivityLinksSelfIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<BusinessActivityLinksSelfIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <BusinessActivityLinksSelfIriTemplate>[];
    }

    return json.fold(<BusinessActivityLinksSelfIriTemplate>[],
        (List<BusinessActivityLinksSelfIriTemplate> previousValue, element) {
      final BusinessActivityLinksSelfIriTemplate? object =
          BusinessActivityLinksSelfIriTemplate.fromJson(element);
      if (object is BusinessActivityLinksSelfIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BusinessActivityLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BusinessActivityLinksSelfIriTemplate>{};
    }

    return json.entries.fold(<String, BusinessActivityLinksSelfIriTemplate>{},
        (Map<String, BusinessActivityLinksSelfIriTemplate> previousValue,
            element) {
      final BusinessActivityLinksSelfIriTemplate? object =
          BusinessActivityLinksSelfIriTemplate.fromJson(element.value);
      if (object is BusinessActivityLinksSelfIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BusinessActivityLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<BusinessActivityLinksSelfIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BusinessActivityLinksSelfIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BusinessActivityLinksSelfIriTemplate>>(
          key, BusinessActivityLinksSelfIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'BusinessActivityLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^mapping\.').hasMatch(key)))
        r'mapping': mapping?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^mapping\.'))) {
            previousValue.add(element.split(RegExp(r'^mapping\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
