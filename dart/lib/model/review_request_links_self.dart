//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ReviewRequestLinksSelf {
  /// Returns a new [ReviewRequestLinksSelf] instance.
  ReviewRequestLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ReviewRequestLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ReviewRequestLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestLinksSelf(
      href: json[r'href'],
      iriTemplate:
          ReviewRequestLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given reviewrequest.
  String href;

  ReviewRequestLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ReviewRequestLinksSelf> listFromJson(List<dynamic> json) {
    return <ReviewRequestLinksSelf>[
      if (json is List)
        for (dynamic value in json) ReviewRequestLinksSelf.fromJson(value),
    ];
  }

  static Map<String, ReviewRequestLinksSelf> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ReviewRequestLinksSelf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReviewRequestLinksSelf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ReviewRequestLinksSelf-objects as value to a dart map
  static Map<String, List<ReviewRequestLinksSelf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ReviewRequestLinksSelf>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReviewRequestLinksSelf.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ReviewRequestLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
