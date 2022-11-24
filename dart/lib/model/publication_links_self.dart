//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PublicationLinksSelf {
  /// Returns a new [PublicationLinksSelf] instance.
  PublicationLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [PublicationLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PublicationLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PublicationLinksSelf(
      href: json[r'href'],
      iriTemplate:
          PublicationLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given publication.
  String href;

  PublicationLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<PublicationLinksSelf> listFromJson(List<dynamic> json) {
    return <PublicationLinksSelf>[
      if (json is List)
        for (dynamic value in json) PublicationLinksSelf.fromJson(value),
    ];
  }

  static Map<String, PublicationLinksSelf> mapFromJson(
      Map<String, dynamic> json) {
    return <String, PublicationLinksSelf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PublicationLinksSelf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PublicationLinksSelf-objects as value to a dart map
  static Map<String, List<PublicationLinksSelf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PublicationLinksSelf>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PublicationLinksSelf.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'PublicationLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
