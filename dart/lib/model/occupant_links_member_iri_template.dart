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
      mapping: BookmarkLinksMemberIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  BookmarkLinksMemberIriTemplateMapping? mapping;

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
      List<dynamic>? json) {
    if (json == null) {
      return <OccupantLinksMemberIriTemplate>[];
    }
    return json
        .map((value) {
          return OccupantLinksMemberIriTemplate.fromJson(value);
        })
        .whereType<OccupantLinksMemberIriTemplate>()
        .toList();
  }

  static Map<String, OccupantLinksMemberIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OccupantLinksMemberIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, OccupantLinksMemberIriTemplate?>(
            key, OccupantLinksMemberIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, OccupantLinksMemberIriTemplate>;
  }

  // maps a json object with a list of OccupantLinksMemberIriTemplate-objects as value to a dart map
  static Map<String, List<OccupantLinksMemberIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<OccupantLinksMemberIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: OccupantLinksMemberIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'OccupantLinksMemberIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
