//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class FeedbackLinksSelf {
  /// Returns a new [FeedbackLinksSelf] instance.
  FeedbackLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [FeedbackLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory FeedbackLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksSelf(
      href: json[r'href'],
      iriTemplate: FeedbackLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given feedback.
  String href;

  FeedbackLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<FeedbackLinksSelf> listFromJson(List<dynamic> json) {
    return <FeedbackLinksSelf>[
      if (json is List)
        for (dynamic value in json) FeedbackLinksSelf.fromJson(value),
    ];
  }

  static Map<String, FeedbackLinksSelf> mapFromJson(Map<String, dynamic> json) {
    return <String, FeedbackLinksSelf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackLinksSelf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of FeedbackLinksSelf-objects as value to a dart map
  static Map<String, List<FeedbackLinksSelf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<FeedbackLinksSelf>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackLinksSelf.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'FeedbackLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
