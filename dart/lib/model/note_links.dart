//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class NoteLinks {
  /// Returns a new [NoteLinks] instance.
  NoteLinks({
    this.about,
    this.author,
    this.self,
  });

  /// Returns a new [NoteLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory NoteLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return NoteLinks(
      about: NoteLinksAbout.fromJson(json[r'about']),
      author: NoteLinksAuthor.fromJson(json[r'author']),
      self: NoteLinksSelf.fromJson(json[r'self']),
    );
  }

  NoteLinksAbout about;

  NoteLinksAuthor author;

  NoteLinksSelf self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is NoteLinks &&
        other.about == about &&
        other.author == author &&
        other.self == self;
  }

  @override
  int get hashCode =>
      (about == null ? 0 : about.hashCode) +
      (author == null ? 0 : author.hashCode) +
      (self == null ? 0 : self.hashCode);

  static List<NoteLinks> listFromJson(List<dynamic> json) {
    return <NoteLinks>[
      if (json is List)
        for (dynamic value in json) NoteLinks.fromJson(value),
    ];
  }

  static Map<String, NoteLinks> mapFromJson(Map<String, dynamic> json) {
    return <String, NoteLinks>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: NoteLinks.fromJson(entry.value),
    };
  }

  // maps a json object with a list of NoteLinks-objects as value to a dart map
  static Map<String, List<NoteLinks>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<NoteLinks>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: NoteLinks.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'NoteLinks[about=$about, author=$author, self=$self]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (about != null) r'about': about,
      if (author != null) r'author': author,
      if (self != null) r'self': self,
    };
  }
}
