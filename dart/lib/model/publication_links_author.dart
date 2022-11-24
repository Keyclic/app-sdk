//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PublicationLinksAuthor {
  /// Returns a new [PublicationLinksAuthor] instance.
  PublicationLinksAuthor({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [PublicationLinksAuthor] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PublicationLinksAuthor.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PublicationLinksAuthor(
      href: json[r'href'],
      iriTemplate:
          PublicationLinksAuthorIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the author associated to the given publication.
  String href;

  PublicationLinksAuthorIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationLinksAuthor &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<PublicationLinksAuthor> listFromJson(List<dynamic> json) {
    return <PublicationLinksAuthor>[
      if (json is List)
        for (dynamic value in json) PublicationLinksAuthor.fromJson(value),
    ];
  }

  static Map<String, PublicationLinksAuthor> mapFromJson(
      Map<String, dynamic> json) {
    return <String, PublicationLinksAuthor>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PublicationLinksAuthor.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PublicationLinksAuthor-objects as value to a dart map
  static Map<String, List<PublicationLinksAuthor>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PublicationLinksAuthor>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PublicationLinksAuthor.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'PublicationLinksAuthor[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
