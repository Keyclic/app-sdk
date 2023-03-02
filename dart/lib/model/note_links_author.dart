//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class NoteLinksAuthor {
  /// Returns a new [NoteLinksAuthor] instance.
  NoteLinksAuthor({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [NoteLinksAuthor] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory NoteLinksAuthor.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return NoteLinksAuthor(
      href: json[r'href'],
      iriTemplate: NoteLinksAuthorIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the author associated to the given note.
  String href;

  NoteLinksAuthorIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is NoteLinksAuthor &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<NoteLinksAuthor> listFromJson(List<dynamic> json) {
    return <NoteLinksAuthor>[
      if (json is List)
        for (dynamic value in json) NoteLinksAuthor.fromJson(value),
    ];
  }

  static Map<String, NoteLinksAuthor> mapFromJson(Map<String, dynamic> json) {
    return <String, NoteLinksAuthor>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: NoteLinksAuthor.fromJson(entry.value),
    };
  }

  // maps a json object with a list of NoteLinksAuthor-objects as value to a dart map
  static Map<String, List<NoteLinksAuthor>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<NoteLinksAuthor>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: NoteLinksAuthor.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'NoteLinksAuthor[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
