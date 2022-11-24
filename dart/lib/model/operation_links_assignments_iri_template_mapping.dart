//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OperationLinksAssignmentsIriTemplateMapping {
  /// Returns a new [OperationLinksAssignmentsIriTemplateMapping] instance.
  OperationLinksAssignmentsIriTemplateMapping({
    this.operation,
  });

  /// Returns a new [OperationLinksAssignmentsIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OperationLinksAssignmentsIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksAssignmentsIriTemplateMapping(
      operation: json[r'operation'],
    );
  }

  String operation;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksAssignmentsIriTemplateMapping &&
        other.operation == operation;
  }

  @override
  int get hashCode => (operation == null ? 0 : operation.hashCode);

  static List<OperationLinksAssignmentsIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return <OperationLinksAssignmentsIriTemplateMapping>[
      if (json is List)
        for (dynamic value in json)
          OperationLinksAssignmentsIriTemplateMapping.fromJson(value),
    ];
  }

  static Map<String, OperationLinksAssignmentsIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OperationLinksAssignmentsIriTemplateMapping>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              OperationLinksAssignmentsIriTemplateMapping.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OperationLinksAssignmentsIriTemplateMapping-objects as value to a dart map
  static Map<String, List<OperationLinksAssignmentsIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic> json) {
    return <String, List<OperationLinksAssignmentsIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OperationLinksAssignmentsIriTemplateMapping.listFromJson(
              entry.value),
    };
  }

  @override
  String toString() =>
      'OperationLinksAssignmentsIriTemplateMapping[operation=$operation]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (operation != null) r'operation': operation,
    };
  }
}
