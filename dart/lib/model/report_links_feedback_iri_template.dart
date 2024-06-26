//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportLinksFeedbackIriTemplate {
  /// Returns a new [ReportLinksFeedbackIriTemplate] instance.
  ReportLinksFeedbackIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReportLinksFeedbackIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportLinksFeedbackIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReportLinksFeedbackIriTemplate(
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

    return other is ReportLinksFeedbackIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReportLinksFeedbackIriTemplate> listFromJson(Iterable? json) {
    if (json == null) {
      return <ReportLinksFeedbackIriTemplate>[];
    }

    return json.fold(<ReportLinksFeedbackIriTemplate>[],
        (List<ReportLinksFeedbackIriTemplate> previousValue, element) {
      final ReportLinksFeedbackIriTemplate? object =
          ReportLinksFeedbackIriTemplate.fromJson(element);
      if (object is ReportLinksFeedbackIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportLinksFeedbackIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksFeedbackIriTemplate>{};
    }

    return json.entries.fold(<String, ReportLinksFeedbackIriTemplate>{},
        (Map<String, ReportLinksFeedbackIriTemplate> previousValue, element) {
      final ReportLinksFeedbackIriTemplate? object =
          ReportLinksFeedbackIriTemplate.fromJson(element.value);
      if (object is ReportLinksFeedbackIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportLinksFeedbackIriTemplate-objects as value to a dart map
  static Map<String, List<ReportLinksFeedbackIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportLinksFeedbackIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportLinksFeedbackIriTemplate>>(
          key, ReportLinksFeedbackIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'ReportLinksFeedbackIriTemplate[mapping=$mapping]';

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
