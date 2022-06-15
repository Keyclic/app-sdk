//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class AssignmentLinksServiceIriTemplate {
  /// Returns a new [AssignmentLinksServiceIriTemplate] instance.
  AssignmentLinksServiceIriTemplate({
    this.mapping,
  });

  /// Returns a new [AssignmentLinksServiceIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssignmentLinksServiceIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AssignmentLinksServiceIriTemplate(
      mapping:
          AssignmentLinksServiceIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  AssignmentLinksServiceIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentLinksServiceIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<AssignmentLinksServiceIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <AssignmentLinksServiceIriTemplate>[];
    }
    return json
        .map((value) {
          return AssignmentLinksServiceIriTemplate.fromJson(value);
        })
        .whereType<AssignmentLinksServiceIriTemplate>()
        .toList();
  }

  static Map<String, AssignmentLinksServiceIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignmentLinksServiceIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, AssignmentLinksServiceIriTemplate?>(
            key, AssignmentLinksServiceIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, AssignmentLinksServiceIriTemplate>;
  }

  // maps a json object with a list of AssignmentLinksServiceIriTemplate-objects as value to a dart map
  static Map<String, List<AssignmentLinksServiceIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<AssignmentLinksServiceIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              AssignmentLinksServiceIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'AssignmentLinksServiceIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
