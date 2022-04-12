//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PublicationLinksAuthor {
  /// Returns a new [PublicationLinksAuthor] instance.
  PublicationLinksAuthor({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [PublicationLinksAuthor] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PublicationLinksAuthor? fromJson(Map<String, dynamic>? json) {
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
  String? href;

  PublicationLinksAuthorIriTemplate? iriTemplate;

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

  static List<PublicationLinksAuthor> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PublicationLinksAuthor>[];
    }
    return json
        .map((value) {
          return PublicationLinksAuthor.fromJson(value);
        })
        .whereType<PublicationLinksAuthor>()
        .toList();
  }

  static Map<String, PublicationLinksAuthor> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PublicationLinksAuthor>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, PublicationLinksAuthor?>(
            key, PublicationLinksAuthor.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PublicationLinksAuthor>;
  }

  // maps a json object with a list of PublicationLinksAuthor-objects as value to a dart map
  static Map<String, List<PublicationLinksAuthor>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PublicationLinksAuthor>>{
      if (json is Map)
        for (final entry in json!.entries)
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
