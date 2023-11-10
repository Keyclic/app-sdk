//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BusinessActivityLinksThumbnail {
  /// Returns a new [BusinessActivityLinksThumbnail] instance.
  BusinessActivityLinksThumbnail({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [BusinessActivityLinksThumbnail] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BusinessActivityLinksThumbnail? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessActivityLinksThumbnail(
      href: json[r'href'],
      iriTemplate: BusinessActivityLinksThumbnailIriTemplate.fromJson(
          json[r'iriTemplate']),
    );
  }

  /// The URI of the thumbnail associated to the given businessactivity.
  String? href;

  BusinessActivityLinksThumbnailIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivityLinksThumbnail &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<BusinessActivityLinksThumbnail> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <BusinessActivityLinksThumbnail>[];
    }

    return json.fold(<BusinessActivityLinksThumbnail>[],
        (List<BusinessActivityLinksThumbnail> previousValue, element) {
      final BusinessActivityLinksThumbnail? object =
          BusinessActivityLinksThumbnail.fromJson(element);
      if (object is BusinessActivityLinksThumbnail) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BusinessActivityLinksThumbnail> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BusinessActivityLinksThumbnail>{};
    }

    return json.entries.fold(<String, BusinessActivityLinksThumbnail>{},
        (Map<String, BusinessActivityLinksThumbnail> previousValue, element) {
      final BusinessActivityLinksThumbnail? object =
          BusinessActivityLinksThumbnail.fromJson(element.value);
      if (object is BusinessActivityLinksThumbnail) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BusinessActivityLinksThumbnail-objects as value to a dart map
  static Map<String, List<BusinessActivityLinksThumbnail>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BusinessActivityLinksThumbnail>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BusinessActivityLinksThumbnail>>(
          key, BusinessActivityLinksThumbnail.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'BusinessActivityLinksThumbnail[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && href != null) || (keys?.contains(r'href') ?? false))
        r'href': href,
      if ((keys == null && iriTemplate != null) ||
          (keys?.contains(r'iriTemplate') ?? false))
        r'iriTemplate': iriTemplate?.toJson(),
    };
  }
}
