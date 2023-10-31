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

    return json.fold(<BusinessActivityLinksImageIriTemplateMapping>[],
        (List<BusinessActivityLinksImageIriTemplateMapping> previousValue,
            element) {
      final BusinessActivityLinksImageIriTemplateMapping? object =
          BusinessActivityLinksImageIriTemplateMapping.fromJson(element);
      if (object is BusinessActivityLinksImageIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BusinessActivityLinksImageIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BusinessActivityLinksImageIriTemplateMapping>{};
    }

    return json.entries
        .fold(<String, BusinessActivityLinksImageIriTemplateMapping>{},
            (Map<String, BusinessActivityLinksImageIriTemplateMapping>
                    previousValue,
                element) {
      final BusinessActivityLinksImageIriTemplateMapping? object =
          BusinessActivityLinksImageIriTemplateMapping.fromJson(element.value);
      if (object is BusinessActivityLinksImageIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BusinessActivityLinksImageIriTemplateMapping-objects as value to a dart map
  static Map<String, List<BusinessActivityLinksImageIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BusinessActivityLinksImageIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String,
              List<BusinessActivityLinksImageIriTemplateMapping>>(key,
          BusinessActivityLinksImageIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'BusinessActivityLinksImageIriTemplateMapping[businessActivity=$businessActivity]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && businessActivity != null) ||
          (keys?.contains(r'businessActivity') ?? false))
        r'businessActivity': businessActivity,
    };
  }
}
