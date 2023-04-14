//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackLinksPlansIriTemplateMapping {
  /// Returns a new [FeedbackLinksPlansIriTemplateMapping] instance.
  FeedbackLinksPlansIriTemplateMapping({
    this.plan,
    this.feedback,
  });

  /// Returns a new [FeedbackLinksPlansIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackLinksPlansIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksPlansIriTemplateMapping(
      plan: json[r'plan'],
      feedback: json[r'feedback'],
    );
  }

  String? plan;

  String? feedback;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksPlansIriTemplateMapping &&
        other.plan == plan &&
        other.feedback == feedback;
  }

  @override
  int get hashCode =>
      (plan == null ? 0 : plan.hashCode) +
      (feedback == null ? 0 : feedback.hashCode);

  static List<FeedbackLinksPlansIriTemplateMapping> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <FeedbackLinksPlansIriTemplateMapping>[];
    }

    return json.fold(<FeedbackLinksPlansIriTemplateMapping>[],
        (List<FeedbackLinksPlansIriTemplateMapping> previousValue, element) {
      final FeedbackLinksPlansIriTemplateMapping? object =
          FeedbackLinksPlansIriTemplateMapping.fromJson(element);
      if (object is FeedbackLinksPlansIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackLinksPlansIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackLinksPlansIriTemplateMapping>{};
    }

    return json.entries.fold(<String, FeedbackLinksPlansIriTemplateMapping>{},
        (Map<String, FeedbackLinksPlansIriTemplateMapping> previousValue,
            element) {
      final FeedbackLinksPlansIriTemplateMapping? object =
          FeedbackLinksPlansIriTemplateMapping.fromJson(element.value);
      if (object is FeedbackLinksPlansIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackLinksPlansIriTemplateMapping-objects as value to a dart map
  static Map<String, List<FeedbackLinksPlansIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackLinksPlansIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackLinksPlansIriTemplateMapping>>(
          key, FeedbackLinksPlansIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'FeedbackLinksPlansIriTemplateMapping[plan=$plan, feedback=$feedback]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (plan != null) r'plan': plan,
      if (feedback != null) r'feedback': feedback,
    };
  }
}
