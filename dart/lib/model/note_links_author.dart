part of keyclic_sdk_api.api;

class NoteLinksAuthor {
  NoteLinksAuthor({
    this.href,
    this.iriTemplate,
  });

  factory NoteLinksAuthor.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return NoteLinksAuthor(
      href: json['href'],
      iriTemplate: NoteLinksAuthorIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the author associated to the given note. */
  String href;

  NoteLinksAuthorIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is NoteLinksAuthor &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= href?.hashCode ?? 0;
    hashCode ^= iriTemplate?.hashCode ?? 0;

    return hashCode;
  }

  static List<NoteLinksAuthor> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => NoteLinksAuthor.fromJson(value))
            ?.toList() ??
        <NoteLinksAuthor>[];
  }

  static Map<String, NoteLinksAuthor> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, NoteLinksAuthor>((String key, dynamic value) {
          return MapEntry(key, NoteLinksAuthor.fromJson(value));
        }) ??
        <String, NoteLinksAuthor>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'NoteLinksAuthor[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
