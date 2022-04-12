//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PublicationLinksFeedIriTemplate {
  /// Returns a new [PublicationLinksFeedIriTemplate] instance.
  PublicationLinksFeedIriTemplate({
    this.mapping,
  });

  /// Returns a new [PublicationLinksFeedIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PublicationLinksFeedIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PublicationLinksFeedIriTemplate(
      mapping: BookmarkLinksPlaceIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  BookmarkLinksPlaceIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationLinksFeedIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<PublicationLinksFeedIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <PublicationLinksFeedIriTemplate>[];
    }
    return json
        .map((value) {
          return PublicationLinksFeedIriTemplate.fromJson(value);
        })
        .whereType<PublicationLinksFeedIriTemplate>()
        .toList();
  }

  static Map<String, PublicationLinksFeedIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PublicationLinksFeedIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, PublicationLinksFeedIriTemplate?>(
            key, PublicationLinksFeedIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PublicationLinksFeedIriTemplate>;
  }

  // maps a json object with a list of PublicationLinksFeedIriTemplate-objects as value to a dart map
  static Map<String, List<PublicationLinksFeedIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PublicationLinksFeedIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: PublicationLinksFeedIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PublicationLinksFeedIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
