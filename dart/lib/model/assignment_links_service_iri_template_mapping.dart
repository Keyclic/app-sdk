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
      Iterable<dynamic>? json) {
    if (json == null) {
      return <AssignmentLinksServiceIriTemplateMapping>[];
    }

    return json.fold(<AssignmentLinksServiceIriTemplateMapping>[],
        (List<AssignmentLinksServiceIriTemplateMapping> previousValue,
            element) {
      final AssignmentLinksServiceIriTemplateMapping? object =
          AssignmentLinksServiceIriTemplateMapping.fromJson(element);
      if (object is AssignmentLinksServiceIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AssignmentLinksServiceIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignmentLinksServiceIriTemplateMapping>{};
    }

    return json.entries.fold(
        <String, AssignmentLinksServiceIriTemplateMapping>{},
        (Map<String, AssignmentLinksServiceIriTemplateMapping> previousValue,
            element) {
      final AssignmentLinksServiceIriTemplateMapping? object =
          AssignmentLinksServiceIriTemplateMapping.fromJson(element.value);
      if (object is AssignmentLinksServiceIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AssignmentLinksServiceIriTemplateMapping-objects as value to a dart map
  static Map<String, List<AssignmentLinksServiceIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AssignmentLinksServiceIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AssignmentLinksServiceIriTemplateMapping>>(
          key, AssignmentLinksServiceIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'AssignmentLinksServiceIriTemplateMapping[service=$service]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && service != null) ||
          (keys?.contains(r'service') ?? false))
        r'service': service,
    };
  }
}
