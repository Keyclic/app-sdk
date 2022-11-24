//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OperationLinksAssignmentsIriTemplate {
  /// Returns a new [OperationLinksAssignmentsIriTemplate] instance.
  OperationLinksAssignmentsIriTemplate({
    this.mapping,
  });

  /// Returns a new [OperationLinksAssignmentsIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OperationLinksAssignmentsIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksAssignmentsIriTemplate(
      mapping: OperationLinksAssignmentsIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  OperationLinksAssignmentsIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksAssignmentsIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<OperationLinksAssignmentsIriTemplate> listFromJson(
      List<dynamic> json) {
    return <OperationLinksAssignmentsIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          OperationLinksAssignmentsIriTemplate.fromJson(value),
    ];
  }

  static Map<String, OperationLinksAssignmentsIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OperationLinksAssignmentsIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OperationLinksAssignmentsIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OperationLinksAssignmentsIriTemplate-objects as value to a dart map
  static Map<String, List<OperationLinksAssignmentsIriTemplate>>
      mapListFromJson(Map<String, dynamic> json) {
    return <String, List<OperationLinksAssignmentsIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              OperationLinksAssignmentsIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'OperationLinksAssignmentsIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
