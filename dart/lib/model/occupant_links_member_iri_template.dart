//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OccupantLinksMemberIriTemplate {
  /// Returns a new [OccupantLinksMemberIriTemplate] instance.
  OccupantLinksMemberIriTemplate({
    this.mapping,
  });

  /// Returns a new [OccupantLinksMemberIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OccupantLinksMemberIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OccupantLinksMemberIriTemplate(
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

    return other is OccupantLinksMemberIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<OccupantLinksMemberIriTemplate> listFromJson(
      Iterable<dynamic>? json) {
    if (json == null) {
      return <OccupantLinksMemberIriTemplate>[];
    }

    return json.fold(<OccupantLinksMemberIriTemplate>[],
        (List<OccupantLinksMemberIriTemplate> previousValue, element) {
      final OccupantLinksMemberIriTemplate? object =
          OccupantLinksMemberIriTemplate.fromJson(element);
      if (object is OccupantLinksMemberIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OccupantLinksMemberIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OccupantLinksMemberIriTemplate>{};
    }

    return json.entries.fold(<String, OccupantLinksMemberIriTemplate>{},
        (Map<String, OccupantLinksMemberIriTemplate> previousValue, element) {
      final OccupantLinksMemberIriTemplate? object =
          OccupantLinksMemberIriTemplate.fromJson(element.value);
      if (object is OccupantLinksMemberIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OccupantLinksMemberIriTemplate-objects as value to a dart map
  static Map<String, List<OccupantLinksMemberIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OccupantLinksMemberIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OccupantLinksMemberIriTemplate>>(
          key, OccupantLinksMemberIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'OccupantLinksMemberIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
