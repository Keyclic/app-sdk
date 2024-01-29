//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackLinksReporterIriTemplate {
  /// Returns a new [FeedbackLinksReporterIriTemplate] instance.
  FeedbackLinksReporterIriTemplate({
    this.mapping,
  });

  /// Returns a new [FeedbackLinksReporterIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackLinksReporterIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksReporterIriTemplate(
      mapping: ContributionLinksContributorIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  ContributionLinksContributorIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksReporterIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<FeedbackLinksReporterIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <FeedbackLinksReporterIriTemplate>[];
    }

    return json.fold(<FeedbackLinksReporterIriTemplate>[],
        (List<FeedbackLinksReporterIriTemplate> previousValue, element) {
      final FeedbackLinksReporterIriTemplate? object =
          FeedbackLinksReporterIriTemplate.fromJson(element);
      if (object is FeedbackLinksReporterIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackLinksReporterIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackLinksReporterIriTemplate>{};
    }

    return json.entries.fold(<String, FeedbackLinksReporterIriTemplate>{},
        (Map<String, FeedbackLinksReporterIriTemplate> previousValue, element) {
      final FeedbackLinksReporterIriTemplate? object =
          FeedbackLinksReporterIriTemplate.fromJson(element.value);
      if (object is FeedbackLinksReporterIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackLinksReporterIriTemplate-objects as value to a dart map
  static Map<String, List<FeedbackLinksReporterIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackLinksReporterIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackLinksReporterIriTemplate>>(
          key, FeedbackLinksReporterIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'FeedbackLinksReporterIriTemplate[mapping=$mapping]';

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
