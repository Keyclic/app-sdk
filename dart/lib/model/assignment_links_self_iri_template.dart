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
    return json
        .map((value) {
          return AssignmentLinksSelfIriTemplate.fromJson(value);
        })
        .whereType<AssignmentLinksSelfIriTemplate>()
        .toList();
  }

  static Map<String, AssignmentLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignmentLinksSelfIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, AssignmentLinksSelfIriTemplate?>(
            key, AssignmentLinksSelfIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, AssignmentLinksSelfIriTemplate>;
  }

  // maps a json object with a list of AssignmentLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<AssignmentLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<AssignmentLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: AssignmentLinksSelfIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'AssignmentLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
