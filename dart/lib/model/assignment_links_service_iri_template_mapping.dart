//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class AssignmentLinksServiceIriTemplateMapping {
  /// Returns a new [AssignmentLinksServiceIriTemplateMapping] instance.
  AssignmentLinksServiceIriTemplateMapping({
    this.service,
  });

  /// Returns a new [AssignmentLinksServiceIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssignmentLinksServiceIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AssignmentLinksServiceIriTemplateMapping(
      service: json[r'service'],
    );
  }

  String? service;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentLinksServiceIriTemplateMapping &&
        other.service == service;
  }

  @override
  int get hashCode => (service == null ? 0 : service.hashCode);

  static List<AssignmentLinksServiceIriTemplateMapping> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <AssignmentLinksServiceIriTemplateMapping>[];
    }
    return json
        .map((value) {
          return AssignmentLinksServiceIriTemplateMapping.fromJson(value);
        })
        .whereType<AssignmentLinksServiceIriTemplateMapping>()
        .toList();
  }

  static Map<String, AssignmentLinksServiceIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignmentLinksServiceIriTemplateMapping>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, AssignmentLinksServiceIriTemplateMapping?>(
            key, AssignmentLinksServiceIriTemplateMapping.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, AssignmentLinksServiceIriTemplateMapping>;
  }

  // maps a json object with a list of AssignmentLinksServiceIriTemplateMapping-objects as value to a dart map
  static Map<String, List<AssignmentLinksServiceIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<AssignmentLinksServiceIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: AssignmentLinksServiceIriTemplateMapping.listFromJson(
              entry.value),
    };
  }

  @override
  String toString() =>
      'AssignmentLinksServiceIriTemplateMapping[service=$service]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (service != null) r'service': service,
    };
  }
}
