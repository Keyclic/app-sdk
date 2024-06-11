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
  static AssignmentLinksSelfIriTemplateMapping? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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
      Iterable? json) {
    if (json == null) {
      return <AssignmentLinksSelfIriTemplateMapping>[];
    }

    return json.fold(<AssignmentLinksSelfIriTemplateMapping>[],
        (List<AssignmentLinksSelfIriTemplateMapping> previousValue, element) {
      final AssignmentLinksSelfIriTemplateMapping? object =
          AssignmentLinksSelfIriTemplateMapping.fromJson(element);
      if (object is AssignmentLinksSelfIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AssignmentLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignmentLinksSelfIriTemplateMapping>{};
    }

    return json.entries.fold(<String, AssignmentLinksSelfIriTemplateMapping>{},
        (Map<String, AssignmentLinksSelfIriTemplateMapping> previousValue,
            element) {
      final AssignmentLinksSelfIriTemplateMapping? object =
          AssignmentLinksSelfIriTemplateMapping.fromJson(element.value);
      if (object is AssignmentLinksSelfIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AssignmentLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<AssignmentLinksSelfIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AssignmentLinksSelfIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AssignmentLinksSelfIriTemplateMapping>>(
          key, AssignmentLinksSelfIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'AssignmentLinksSelfIriTemplateMapping[assignment=$assignment]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'assignment'))
        r'assignment': assignment,
    };
  }
}
