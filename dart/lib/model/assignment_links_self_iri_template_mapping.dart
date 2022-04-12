//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class AssignmentLinksSelfIriTemplateMapping {
  /// Returns a new [AssignmentLinksSelfIriTemplateMapping] instance.
  AssignmentLinksSelfIriTemplateMapping({
    this.assignment,
  });

  /// Returns a new [AssignmentLinksSelfIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssignmentLinksSelfIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AssignmentLinksSelfIriTemplateMapping(
      assignment: json[r'assignment'],
    );
  }

  String? assignment;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentLinksSelfIriTemplateMapping &&
        other.assignment == assignment;
  }

  @override
  int get hashCode => (assignment == null ? 0 : assignment.hashCode);

  static List<AssignmentLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <AssignmentLinksSelfIriTemplateMapping>[];
    }
    return json
        .map((value) {
          return AssignmentLinksSelfIriTemplateMapping.fromJson(value);
        })
        .whereType<AssignmentLinksSelfIriTemplateMapping>()
        .toList();
  }

  static Map<String, AssignmentLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignmentLinksSelfIriTemplateMapping>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, AssignmentLinksSelfIriTemplateMapping?>(
            key, AssignmentLinksSelfIriTemplateMapping.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, AssignmentLinksSelfIriTemplateMapping>;
  }

  // maps a json object with a list of AssignmentLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<AssignmentLinksSelfIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<AssignmentLinksSelfIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              AssignmentLinksSelfIriTemplateMapping.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'AssignmentLinksSelfIriTemplateMapping[assignment=$assignment]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (assignment != null) r'assignment': assignment,
    };
  }
}
