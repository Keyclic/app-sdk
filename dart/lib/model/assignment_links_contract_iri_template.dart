//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class AssignmentLinksContractIriTemplate {
  /// Returns a new [AssignmentLinksContractIriTemplate] instance.
  AssignmentLinksContractIriTemplate({
    this.mapping,
  });

  /// Returns a new [AssignmentLinksContractIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssignmentLinksContractIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AssignmentLinksContractIriTemplate(
      mapping: json[r'mapping'] is! Map
          ? null
          : AssignmentLinksContractIriTemplateMapping.fromJson(
              json[r'mapping']),
    );
  }

  AssignmentLinksContractIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentLinksContractIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<AssignmentLinksContractIriTemplate> listFromJson(
      Iterable<dynamic>? json) {
    if (json == null) {
      return <AssignmentLinksContractIriTemplate>[];
    }

    return json.fold(<AssignmentLinksContractIriTemplate>[],
        (List<AssignmentLinksContractIriTemplate> previousValue, element) {
      final AssignmentLinksContractIriTemplate? object =
          AssignmentLinksContractIriTemplate.fromJson(element);
      if (object is AssignmentLinksContractIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AssignmentLinksContractIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignmentLinksContractIriTemplate>{};
    }

    return json.entries.fold(<String, AssignmentLinksContractIriTemplate>{},
        (Map<String, AssignmentLinksContractIriTemplate> previousValue,
            element) {
      final AssignmentLinksContractIriTemplate? object =
          AssignmentLinksContractIriTemplate.fromJson(element.value);
      if (object is AssignmentLinksContractIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AssignmentLinksContractIriTemplate-objects as value to a dart map
  static Map<String, List<AssignmentLinksContractIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AssignmentLinksContractIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AssignmentLinksContractIriTemplate>>(
          key, AssignmentLinksContractIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'AssignmentLinksContractIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
