//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PublicationLinksSelfIriTemplate {
  /// Returns a new [PublicationLinksSelfIriTemplate] instance.
  PublicationLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [PublicationLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PublicationLinksSelfIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PublicationLinksSelfIriTemplate(
      mapping:
          PublicationLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  PublicationLinksSelfIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<PublicationLinksSelfIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <PublicationLinksSelfIriTemplate>[];
    }
    return json
        .map((value) {
          return PublicationLinksSelfIriTemplate.fromJson(value);
        })
        .whereType<PublicationLinksSelfIriTemplate>()
        .toList();
  }

  static Map<String, PublicationLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PublicationLinksSelfIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, PublicationLinksSelfIriTemplate?>(
            key, PublicationLinksSelfIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PublicationLinksSelfIriTemplate>;
  }

  // maps a json object with a list of PublicationLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<PublicationLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PublicationLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: PublicationLinksSelfIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PublicationLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
