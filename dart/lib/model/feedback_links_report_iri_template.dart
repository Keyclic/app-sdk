//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackLinksReportIriTemplate {
  /// Returns a new [FeedbackLinksReportIriTemplate] instance.
  FeedbackLinksReportIriTemplate({
    this.mapping,
  });

  /// Returns a new [FeedbackLinksReportIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackLinksReportIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return FeedbackLinksReportIriTemplate(
      mapping:
          AssignmentLinksReportIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  AssignmentLinksReportIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksReportIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<FeedbackLinksReportIriTemplate> listFromJson(Iterable? json) {
    if (json == null) {
      return <FeedbackLinksReportIriTemplate>[];
    }

    return json.fold(<FeedbackLinksReportIriTemplate>[],
        (List<FeedbackLinksReportIriTemplate> previousValue, element) {
      final FeedbackLinksReportIriTemplate? object =
          FeedbackLinksReportIriTemplate.fromJson(element);
      if (object is FeedbackLinksReportIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackLinksReportIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackLinksReportIriTemplate>{};
    }

    return json.entries.fold(<String, FeedbackLinksReportIriTemplate>{},
        (Map<String, FeedbackLinksReportIriTemplate> previousValue, element) {
      final FeedbackLinksReportIriTemplate? object =
          FeedbackLinksReportIriTemplate.fromJson(element.value);
      if (object is FeedbackLinksReportIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackLinksReportIriTemplate-objects as value to a dart map
  static Map<String, List<FeedbackLinksReportIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackLinksReportIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackLinksReportIriTemplate>>(
          key, FeedbackLinksReportIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'FeedbackLinksReportIriTemplate[mapping=$mapping]';

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
