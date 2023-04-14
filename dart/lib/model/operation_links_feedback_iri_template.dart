//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationLinksFeedbackIriTemplate {
  /// Returns a new [OperationLinksFeedbackIriTemplate] instance.
  OperationLinksFeedbackIriTemplate({
    this.mapping,
  });

  /// Returns a new [OperationLinksFeedbackIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationLinksFeedbackIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OperationLinksFeedbackIriTemplate(
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

    return other is OperationLinksFeedbackIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<OperationLinksFeedbackIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <OperationLinksFeedbackIriTemplate>[];
    }

    return json.fold(<OperationLinksFeedbackIriTemplate>[],
        (List<OperationLinksFeedbackIriTemplate> previousValue, element) {
      final OperationLinksFeedbackIriTemplate? object =
          OperationLinksFeedbackIriTemplate.fromJson(element);
      if (object is OperationLinksFeedbackIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OperationLinksFeedbackIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationLinksFeedbackIriTemplate>{};
    }

    return json.entries.fold(<String, OperationLinksFeedbackIriTemplate>{},
        (Map<String, OperationLinksFeedbackIriTemplate> previousValue,
            element) {
      final OperationLinksFeedbackIriTemplate? object =
          OperationLinksFeedbackIriTemplate.fromJson(element.value);
      if (object is OperationLinksFeedbackIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OperationLinksFeedbackIriTemplate-objects as value to a dart map
  static Map<String, List<OperationLinksFeedbackIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OperationLinksFeedbackIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OperationLinksFeedbackIriTemplate>>(
          key, OperationLinksFeedbackIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'OperationLinksFeedbackIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
