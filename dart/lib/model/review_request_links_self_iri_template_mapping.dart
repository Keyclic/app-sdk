//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ReviewRequestLinksSelfIriTemplateMapping {
  /// Returns a new [ReviewRequestLinksSelfIriTemplateMapping] instance.
  ReviewRequestLinksSelfIriTemplateMapping({
    this.reviewRequest,
  });

  /// Returns a new [ReviewRequestLinksSelfIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ReviewRequestLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestLinksSelfIriTemplateMapping(
      reviewRequest: json[r'reviewRequest'],
    );
  }

  String reviewRequest;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestLinksSelfIriTemplateMapping &&
        other.reviewRequest == reviewRequest;
  }

  @override
  int get hashCode => (reviewRequest == null ? 0 : reviewRequest.hashCode);

  static List<ReviewRequestLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return <ReviewRequestLinksSelfIriTemplateMapping>[
      if (json is List)
        for (dynamic value in json)
          ReviewRequestLinksSelfIriTemplateMapping.fromJson(value),
    ];
  }

  static Map<String, ReviewRequestLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ReviewRequestLinksSelfIriTemplateMapping>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              ReviewRequestLinksSelfIriTemplateMapping.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ReviewRequestLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<ReviewRequestLinksSelfIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic> json) {
    return <String, List<ReviewRequestLinksSelfIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReviewRequestLinksSelfIriTemplateMapping.listFromJson(
              entry.value),
    };
  }

  @override
  String toString() =>
      'ReviewRequestLinksSelfIriTemplateMapping[reviewRequest=$reviewRequest]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (reviewRequest != null) r'reviewRequest': reviewRequest,
    };
  }
}
