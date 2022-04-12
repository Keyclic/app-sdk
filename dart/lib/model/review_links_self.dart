//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReviewLinksSelf {
  /// Returns a new [ReviewLinksSelf] instance.
  ReviewLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ReviewLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewLinksSelf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReviewLinksSelf(
      href: json[r'href'],
      iriTemplate: ReviewLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given review.
  String? href;

  ReviewLinksSelfIriTemplate? iriTemplate;

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

  static List<ReviewLinksSelf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ReviewLinksSelf>[];
    }
    return json
        .map((value) {
          return ReviewLinksSelf.fromJson(value);
        })
        .whereType<ReviewLinksSelf>()
        .toList();
  }

  static Map<String, ReviewLinksSelf> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewLinksSelf>{};
    }

    final map = json.map((key, value) => MapEntry<String, ReviewLinksSelf?>(
        key, ReviewLinksSelf.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ReviewLinksSelf>;
  }

  // maps a json object with a list of ReviewLinksSelf-objects as value to a dart map
  static Map<String, List<ReviewLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ReviewLinksSelf>>{
      if (json is Map)
        for (final entry in json!.entries)
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
