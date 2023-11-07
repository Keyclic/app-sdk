//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReviewRequestLinksOrganization {
  /// Returns a new [ReviewRequestLinksOrganization] instance.
  ReviewRequestLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ReviewRequestLinksOrganization] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewRequestLinksOrganization? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestLinksOrganization(
      href: json[r'href'],
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : ReviewRequestLinksOrganizationIriTemplate.fromJson(
              json[r'iriTemplate']),
    );
  }

  /// The URI of the organization associated to the given reviewrequest.
  String? href;

  ReviewRequestLinksOrganizationIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestLinksOrganization &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ReviewRequestLinksOrganization> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ReviewRequestLinksOrganization>[];
    }

    return json.fold(<ReviewRequestLinksOrganization>[],
        (List<ReviewRequestLinksOrganization> previousValue, element) {
      final ReviewRequestLinksOrganization? object =
          ReviewRequestLinksOrganization.fromJson(element);
      if (object is ReviewRequestLinksOrganization) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewRequestLinksOrganization> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewRequestLinksOrganization>{};
    }

    return json.entries.fold(<String, ReviewRequestLinksOrganization>{},
        (Map<String, ReviewRequestLinksOrganization> previousValue, element) {
      final ReviewRequestLinksOrganization? object =
          ReviewRequestLinksOrganization.fromJson(element.value);
      if (object is ReviewRequestLinksOrganization) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewRequestLinksOrganization-objects as value to a dart map
  static Map<String, List<ReviewRequestLinksOrganization>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewRequestLinksOrganization>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewRequestLinksOrganization>>(
          key, ReviewRequestLinksOrganization.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReviewRequestLinksOrganization[href=$href, iriTemplate=$iriTemplate]';

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
