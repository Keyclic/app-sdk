//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PublicationLinksSelfIriTemplateMapping {
  /// Returns a new [PublicationLinksSelfIriTemplateMapping] instance.
  PublicationLinksSelfIriTemplateMapping({
    this.publication,
  });

  /// Returns a new [PublicationLinksSelfIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PublicationLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PublicationLinksSelfIriTemplateMapping(
      publication: json[r'publication'],
    );
  }

  String publication;

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
      List<dynamic> json) {
    return <PublicationLinksSelfIriTemplateMapping>[
      if (json is List)
        for (dynamic value in json)
          PublicationLinksSelfIriTemplateMapping.fromJson(value),
    ];
  }

  static Map<String, PublicationLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return <String, PublicationLinksSelfIriTemplateMapping>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              PublicationLinksSelfIriTemplateMapping.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PublicationLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<PublicationLinksSelfIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic> json) {
    return <String, List<PublicationLinksSelfIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json.entries)
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
