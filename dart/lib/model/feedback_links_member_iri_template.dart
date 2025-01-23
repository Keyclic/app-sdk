//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackLinksMemberIriTemplate {
  /// Returns a new [FeedbackLinksMemberIriTemplate] instance.
  FeedbackLinksMemberIriTemplate({
    this.mapping,
  });

  /// Returns a new [FeedbackLinksMemberIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackLinksMemberIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return FeedbackLinksMemberIriTemplate(
      mapping:
          AssignmentLinksMemberIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  AssignmentLinksMemberIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksMemberIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<FeedbackLinksMemberIriTemplate> listFromJson(Iterable? json) {
    if (json == null) {
      return <FeedbackLinksMemberIriTemplate>[];
    }

    return json.fold(<FeedbackLinksMemberIriTemplate>[],
        (List<FeedbackLinksMemberIriTemplate> previousValue, element) {
      final FeedbackLinksMemberIriTemplate? object =
          FeedbackLinksMemberIriTemplate.fromJson(element);
      if (object is FeedbackLinksMemberIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackLinksMemberIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackLinksMemberIriTemplate>{};
    }

    return json.entries.fold(<String, FeedbackLinksMemberIriTemplate>{},
        (Map<String, FeedbackLinksMemberIriTemplate> previousValue, element) {
      final FeedbackLinksMemberIriTemplate? object =
          FeedbackLinksMemberIriTemplate.fromJson(element.value);
      if (object is FeedbackLinksMemberIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackLinksMemberIriTemplate-objects as value to a dart map
  static Map<String, List<FeedbackLinksMemberIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackLinksMemberIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackLinksMemberIriTemplate>>(
          key, FeedbackLinksMemberIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'FeedbackLinksMemberIriTemplate[mapping=$mapping]';

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
