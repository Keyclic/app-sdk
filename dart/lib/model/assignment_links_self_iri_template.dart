//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class AssignmentLinksSelfIriTemplate {
  /// Returns a new [AssignmentLinksSelfIriTemplate] instance.
  AssignmentLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [AssignmentLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssignmentLinksSelfIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AssignmentLinksSelfIriTemplate(
      mapping: AssignmentLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  AssignmentLinksSelfIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<AssignmentLinksSelfIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <AssignmentLinksSelfIriTemplate>[];
    }

    return json.fold(<AssignmentLinksSelfIriTemplate>[],
        (List<AssignmentLinksSelfIriTemplate> previousValue, element) {
      final AssignmentLinksSelfIriTemplate? object =
          AssignmentLinksSelfIriTemplate.fromJson(element);
      if (object is AssignmentLinksSelfIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AssignmentLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignmentLinksSelfIriTemplate>{};
    }

    return json.entries.fold(<String, AssignmentLinksSelfIriTemplate>{},
        (Map<String, AssignmentLinksSelfIriTemplate> previousValue, element) {
      final AssignmentLinksSelfIriTemplate? object =
          AssignmentLinksSelfIriTemplate.fromJson(element.value);
      if (object is AssignmentLinksSelfIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AssignmentLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<AssignmentLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AssignmentLinksSelfIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AssignmentLinksSelfIriTemplate>>(
          key, AssignmentLinksSelfIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'AssignmentLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
