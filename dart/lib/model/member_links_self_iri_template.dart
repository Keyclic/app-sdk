//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MemberLinksSelfIriTemplate {
  /// Returns a new [MemberLinksSelfIriTemplate] instance.
  MemberLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [MemberLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MemberLinksSelfIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MemberLinksSelfIriTemplate(
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

    return other is MemberLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<MemberLinksSelfIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <MemberLinksSelfIriTemplate>[];
    }
    return json
        .map((value) {
          return MemberLinksSelfIriTemplate.fromJson(value);
        })
        .whereType<MemberLinksSelfIriTemplate>()
        .toList();
  }

  static Map<String, MemberLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MemberLinksSelfIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, MemberLinksSelfIriTemplate?>(
            key, MemberLinksSelfIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, MemberLinksSelfIriTemplate>;
  }

  // maps a json object with a list of MemberLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<MemberLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<MemberLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: MemberLinksSelfIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'MemberLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
