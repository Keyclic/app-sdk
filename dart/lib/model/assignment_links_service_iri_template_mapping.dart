//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class AssignmentLinksServiceIriTemplateMapping {
  /// Returns a new [AssignmentLinksServiceIriTemplateMapping] instance.
  AssignmentLinksServiceIriTemplateMapping({
    this.service,
  });

  /// Returns a new [AssignmentLinksServiceIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory AssignmentLinksServiceIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AssignmentLinksServiceIriTemplateMapping(
      service: json[r'service'],
    );
  }

  String service;

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
      List<dynamic> json) {
    return <AssignmentLinksServiceIriTemplateMapping>[
      if (json is List)
        for (dynamic value in json)
          AssignmentLinksServiceIriTemplateMapping.fromJson(value),
    ];
  }

  static Map<String, AssignmentLinksServiceIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return <String, AssignmentLinksServiceIriTemplateMapping>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              AssignmentLinksServiceIriTemplateMapping.fromJson(entry.value),
    };
  }

  // maps a json object with a list of AssignmentLinksServiceIriTemplateMapping-objects as value to a dart map
  static Map<String, List<AssignmentLinksServiceIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic> json) {
    return <String, List<AssignmentLinksServiceIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json.entries)
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
