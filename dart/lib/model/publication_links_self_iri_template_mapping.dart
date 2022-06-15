//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PublicationLinksSelfIriTemplateMapping {
  /// Returns a new [PublicationLinksSelfIriTemplateMapping] instance.
  PublicationLinksSelfIriTemplateMapping({
    this.publication,
  });

  /// Returns a new [PublicationLinksSelfIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PublicationLinksSelfIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PublicationLinksSelfIriTemplateMapping(
      publication: json[r'publication'],
    );
  }

  String? publication;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationLinksSelfIriTemplateMapping &&
        other.publication == publication;
  }

  @override
  int get hashCode => (publication == null ? 0 : publication.hashCode);

  static List<PublicationLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <PublicationLinksSelfIriTemplateMapping>[];
    }
    return json
        .map((value) {
          return PublicationLinksSelfIriTemplateMapping.fromJson(value);
        })
        .whereType<PublicationLinksSelfIriTemplateMapping>()
        .toList();
  }

  static Map<String, PublicationLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PublicationLinksSelfIriTemplateMapping>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, PublicationLinksSelfIriTemplateMapping?>(
            key, PublicationLinksSelfIriTemplateMapping.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PublicationLinksSelfIriTemplateMapping>;
  }

  // maps a json object with a list of PublicationLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<PublicationLinksSelfIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<PublicationLinksSelfIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              PublicationLinksSelfIriTemplateMapping.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'PublicationLinksSelfIriTemplateMapping[publication=$publication]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (publication != null) r'publication': publication,
    };
  }
}
