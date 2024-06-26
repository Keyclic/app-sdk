//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackLinksTrackingIriTemplate {
  /// Returns a new [FeedbackLinksTrackingIriTemplate] instance.
  FeedbackLinksTrackingIriTemplate({
    this.mapping,
  });

  /// Returns a new [FeedbackLinksTrackingIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackLinksTrackingIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return FeedbackLinksTrackingIriTemplate(
      mapping: ContributionLinksFeedbackIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  ContributionLinksFeedbackIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksTrackingIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<FeedbackLinksTrackingIriTemplate> listFromJson(Iterable? json) {
    if (json == null) {
      return <FeedbackLinksTrackingIriTemplate>[];
    }

    return json.fold(<FeedbackLinksTrackingIriTemplate>[],
        (List<FeedbackLinksTrackingIriTemplate> previousValue, element) {
      final FeedbackLinksTrackingIriTemplate? object =
          FeedbackLinksTrackingIriTemplate.fromJson(element);
      if (object is FeedbackLinksTrackingIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackLinksTrackingIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackLinksTrackingIriTemplate>{};
    }

    return json.entries.fold(<String, FeedbackLinksTrackingIriTemplate>{},
        (Map<String, FeedbackLinksTrackingIriTemplate> previousValue, element) {
      final FeedbackLinksTrackingIriTemplate? object =
          FeedbackLinksTrackingIriTemplate.fromJson(element.value);
      if (object is FeedbackLinksTrackingIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackLinksTrackingIriTemplate-objects as value to a dart map
  static Map<String, List<FeedbackLinksTrackingIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackLinksTrackingIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackLinksTrackingIriTemplate>>(
          key, FeedbackLinksTrackingIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'FeedbackLinksTrackingIriTemplate[mapping=$mapping]';

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
