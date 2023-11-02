//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class AssignmentLinksContractIriTemplateMapping {
  /// Returns a new [AssignmentLinksContractIriTemplateMapping] instance.
  AssignmentLinksContractIriTemplateMapping({
    this.identifier,
  });

  /// Returns a new [AssignmentLinksContractIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssignmentLinksContractIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AssignmentLinksContractIriTemplateMapping(
      identifier: json[r'identifier'],
    );
  }

  String? identifier;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentLinksContractIriTemplateMapping &&
        other.identifier == identifier;
  }

  @override
  int get hashCode => (identifier == null ? 0 : identifier.hashCode);

  static List<AssignmentLinksContractIriTemplateMapping> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <AssignmentLinksContractIriTemplateMapping>[];
    }

    return json.fold(<AssignmentLinksContractIriTemplateMapping>[],
        (List<AssignmentLinksContractIriTemplateMapping> previousValue,
            element) {
      final AssignmentLinksContractIriTemplateMapping? object =
          AssignmentLinksContractIriTemplateMapping.fromJson(element);
      if (object is AssignmentLinksContractIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AssignmentLinksContractIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignmentLinksContractIriTemplateMapping>{};
    }

    return json.entries.fold(
        <String, AssignmentLinksContractIriTemplateMapping>{},
        (Map<String, AssignmentLinksContractIriTemplateMapping> previousValue,
            element) {
      final AssignmentLinksContractIriTemplateMapping? object =
          AssignmentLinksContractIriTemplateMapping.fromJson(element.value);
      if (object is AssignmentLinksContractIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AssignmentLinksContractIriTemplateMapping-objects as value to a dart map
  static Map<String, List<AssignmentLinksContractIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AssignmentLinksContractIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AssignmentLinksContractIriTemplateMapping>>(
          key, AssignmentLinksContractIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'AssignmentLinksContractIriTemplateMapping[identifier=$identifier]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (identifier != null) r'identifier': identifier,
    };
  }
}
