//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ReviewRequestLinksOrganization {
  /// Returns a new [ReviewRequestLinksOrganization] instance.
  ReviewRequestLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ReviewRequestLinksOrganization] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ReviewRequestLinksOrganization.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestLinksOrganization(
      href: json[r'href'],
      iriTemplate: ReviewRequestLinksOrganizationIriTemplate.fromJson(
          json[r'iriTemplate']),
    );
  }

  /// The URI of the organization associated to the given reviewrequest.
  String href;

  ReviewRequestLinksOrganizationIriTemplate iriTemplate;

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

  static List<ReviewRequestLinksOrganization> listFromJson(List<dynamic> json) {
    return <ReviewRequestLinksOrganization>[
      if (json is List)
        for (dynamic value in json)
          ReviewRequestLinksOrganization.fromJson(value),
    ];
  }

  static Map<String, ReviewRequestLinksOrganization> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ReviewRequestLinksOrganization>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReviewRequestLinksOrganization.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ReviewRequestLinksOrganization-objects as value to a dart map
  static Map<String, List<ReviewRequestLinksOrganization>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ReviewRequestLinksOrganization>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReviewRequestLinksOrganization.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ReviewRequestLinksOrganization[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
