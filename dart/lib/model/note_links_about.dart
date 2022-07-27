part of keyclic_sdk_api.api;

class NoteLinksAbout {
  NoteLinksAbout({
    this.href,
    this.iriTemplate,
  });

  factory NoteLinksAbout.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return NoteLinksAbout(
      href: json['href'],
      iriTemplate: NoteLinksAboutIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the about associated to the given note. */
  String href;

  NoteLinksAboutIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is NoteLinksAbout &&
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

  static List<NoteLinksAbout> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => NoteLinksAbout.fromJson(value))
            ?.toList() ??
        <NoteLinksAbout>[];
  }

  static Map<String, NoteLinksAbout> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, NoteLinksAbout>((String key, dynamic value) {
          return MapEntry(key, NoteLinksAbout.fromJson(value));
        }) ??
        <String, NoteLinksAbout>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'NoteLinksAbout[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
