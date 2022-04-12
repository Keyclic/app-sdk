//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class InvitationLinksMemberIriTemplate {
  /// Returns a new [InvitationLinksMemberIriTemplate] instance.
  InvitationLinksMemberIriTemplate({
    this.mapping,
  });

  /// Returns a new [InvitationLinksMemberIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InvitationLinksMemberIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InvitationLinksMemberIriTemplate(
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

    return other is InvitationLinksMemberIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<InvitationLinksMemberIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <InvitationLinksMemberIriTemplate>[];
    }
    return json
        .map((value) {
          return InvitationLinksMemberIriTemplate.fromJson(value);
        })
        .whereType<InvitationLinksMemberIriTemplate>()
        .toList();
  }

  static Map<String, InvitationLinksMemberIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, InvitationLinksMemberIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, InvitationLinksMemberIriTemplate?>(
            key, InvitationLinksMemberIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, InvitationLinksMemberIriTemplate>;
  }

  // maps a json object with a list of InvitationLinksMemberIriTemplate-objects as value to a dart map
  static Map<String, List<InvitationLinksMemberIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<InvitationLinksMemberIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: InvitationLinksMemberIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'InvitationLinksMemberIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
