//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ReviewLinksSelf {
  /// Returns a new [ReviewLinksSelf] instance.
  ReviewLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ReviewLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ReviewLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewLinksSelf(
      href: json[r'href'],
      iriTemplate: ReviewLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given review.
  String href;

  ReviewLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ReviewLinksSelf> listFromJson(List<dynamic> json) {
    return <ReviewLinksSelf>[
      if (json is List)
        for (dynamic value in json) ReviewLinksSelf.fromJson(value),
    ];
  }

  static Map<String, ReviewLinksSelf> mapFromJson(Map<String, dynamic> json) {
    return <String, ReviewLinksSelf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReviewLinksSelf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ReviewLinksSelf-objects as value to a dart map
  static Map<String, List<ReviewLinksSelf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ReviewLinksSelf>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReviewLinksSelf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ReviewLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
