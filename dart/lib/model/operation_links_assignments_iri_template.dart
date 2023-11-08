//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationLinksAssignmentsIriTemplate {
  /// Returns a new [OperationLinksAssignmentsIriTemplate] instance.
  OperationLinksAssignmentsIriTemplate({
    this.mapping,
  });

  /// Returns a new [OperationLinksAssignmentsIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationLinksAssignmentsIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OperationLinksAssignmentsIriTemplate(
      mapping: json[r'mapping'] is! Map
          ? null
          : OperationLinksAssignmentsIriTemplateMapping.fromJson(
              json[r'mapping']),
    );
  }

  OperationLinksAssignmentsIriTemplateMapping? mapping;

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
      Iterable<dynamic>? json) {
    if (json == null) {
      return <OperationLinksAssignmentsIriTemplate>[];
    }

    return json.fold(<OperationLinksAssignmentsIriTemplate>[],
        (List<OperationLinksAssignmentsIriTemplate> previousValue, element) {
      final OperationLinksAssignmentsIriTemplate? object =
          OperationLinksAssignmentsIriTemplate.fromJson(element);
      if (object is OperationLinksAssignmentsIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OperationLinksAssignmentsIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationLinksAssignmentsIriTemplate>{};
    }

    return json.entries.fold(<String, OperationLinksAssignmentsIriTemplate>{},
        (Map<String, OperationLinksAssignmentsIriTemplate> previousValue,
            element) {
      final OperationLinksAssignmentsIriTemplate? object =
          OperationLinksAssignmentsIriTemplate.fromJson(element.value);
      if (object is OperationLinksAssignmentsIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OperationLinksAssignmentsIriTemplate-objects as value to a dart map
  static Map<String, List<OperationLinksAssignmentsIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OperationLinksAssignmentsIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OperationLinksAssignmentsIriTemplate>>(
          key, OperationLinksAssignmentsIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'OperationLinksAssignmentsIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
