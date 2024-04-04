//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationLinksAssignmentsIriTemplateMapping {
  /// Returns a new [OperationLinksAssignmentsIriTemplateMapping] instance.
  OperationLinksAssignmentsIriTemplateMapping({
    this.operation,
  });

  /// Returns a new [OperationLinksAssignmentsIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationLinksAssignmentsIriTemplateMapping? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return OperationLinksAssignmentsIriTemplateMapping(
      operation: json[r'operation'],
    );
  }

  String? operation;

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
      List<dynamic>? json) {
    if (json == null) {
      return <OperationLinksAssignmentsIriTemplateMapping>[];
    }

    return json.fold(<OperationLinksAssignmentsIriTemplateMapping>[],
        (List<OperationLinksAssignmentsIriTemplateMapping> previousValue,
            element) {
      final OperationLinksAssignmentsIriTemplateMapping? object =
          OperationLinksAssignmentsIriTemplateMapping.fromJson(element);
      if (object is OperationLinksAssignmentsIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OperationLinksAssignmentsIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationLinksAssignmentsIriTemplateMapping>{};
    }

    return json.entries.fold(
        <String, OperationLinksAssignmentsIriTemplateMapping>{},
        (Map<String, OperationLinksAssignmentsIriTemplateMapping> previousValue,
            element) {
      final OperationLinksAssignmentsIriTemplateMapping? object =
          OperationLinksAssignmentsIriTemplateMapping.fromJson(element.value);
      if (object is OperationLinksAssignmentsIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OperationLinksAssignmentsIriTemplateMapping-objects as value to a dart map
  static Map<String, List<OperationLinksAssignmentsIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OperationLinksAssignmentsIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String,
              List<OperationLinksAssignmentsIriTemplateMapping>>(
          key, OperationLinksAssignmentsIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OperationLinksAssignmentsIriTemplateMapping[operation=$operation]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'operation')) r'operation': operation,
    };
  }
}
