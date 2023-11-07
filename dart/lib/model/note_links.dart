//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

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
  static NoteLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NoteLinks(
      about: json[r'about'] is! Map
          ? null
          : NoteLinksAbout.fromJson(json[r'about']),
      author: json[r'author'] is! Map
          ? null
          : NoteLinksAuthor.fromJson(json[r'author']),
      self:
          json[r'self'] is! Map ? null : NoteLinksSelf.fromJson(json[r'self']),
    );
  }

  NoteLinksAbout? about;

  NoteLinksAuthor? author;

  NoteLinksSelf? self;

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

  static List<NoteLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <NoteLinks>[];
    }

    return json.fold(<NoteLinks>[], (List<NoteLinks> previousValue, element) {
      final NoteLinks? object = NoteLinks.fromJson(element);
      if (object is NoteLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, NoteLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, NoteLinks>{};
    }

    return json.entries.fold(<String, NoteLinks>{},
        (Map<String, NoteLinks> previousValue, element) {
      final NoteLinks? object = NoteLinks.fromJson(element.value);
      if (object is NoteLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of NoteLinks-objects as value to a dart map
  static Map<String, List<NoteLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<NoteLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<NoteLinks>>(
          key, NoteLinks.listFromJson(value));
    });
  }

  @override
  String toString() => 'NoteLinks[about=$about, author=$author, self=$self]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && about != null) ||
          (keys?.contains(r'about') ?? false))
        r'about': about?.toJson(),
      if ((keys == null && author != null) ||
          (keys?.contains(r'author') ?? false))
        r'author': author?.toJson(),
      if ((keys == null && self != null) || (keys?.contains(r'self') ?? false))
        r'self': self?.toJson(),
    };
  }
}
