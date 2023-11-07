//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class AssignmentLinksMemberIriTemplate {
  /// Returns a new [AssignmentLinksMemberIriTemplate] instance.
  AssignmentLinksMemberIriTemplate({
    this.mapping,
  });

  /// Returns a new [AssignmentLinksMemberIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssignmentLinksMemberIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AssignmentLinksMemberIriTemplate(
      mapping: json[r'mapping'] is! Map
          ? null
          : AssignmentLinksMemberIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  AssignmentLinksMemberIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentLinksMemberIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<AssignmentLinksMemberIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <AssignmentLinksMemberIriTemplate>[];
    }

    return json.fold(<AssignmentLinksMemberIriTemplate>[],
        (List<AssignmentLinksMemberIriTemplate> previousValue, element) {
      final AssignmentLinksMemberIriTemplate? object =
          AssignmentLinksMemberIriTemplate.fromJson(element);
      if (object is AssignmentLinksMemberIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AssignmentLinksMemberIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignmentLinksMemberIriTemplate>{};
    }

    return json.entries.fold(<String, AssignmentLinksMemberIriTemplate>{},
        (Map<String, AssignmentLinksMemberIriTemplate> previousValue, element) {
      final AssignmentLinksMemberIriTemplate? object =
          AssignmentLinksMemberIriTemplate.fromJson(element.value);
      if (object is AssignmentLinksMemberIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AssignmentLinksMemberIriTemplate-objects as value to a dart map
  static Map<String, List<AssignmentLinksMemberIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AssignmentLinksMemberIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AssignmentLinksMemberIriTemplate>>(
          key, AssignmentLinksMemberIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'AssignmentLinksMemberIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
