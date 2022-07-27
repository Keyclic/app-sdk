part of keyclic_sdk_api.api;

class NoteLinks {
  NoteLinks({
    this.about,
    this.author,
    this.self,
  });

  factory NoteLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return NoteLinks(
      about: NoteLinksAbout.fromJson(json['about']),
      author: NoteLinksAuthor.fromJson(json['author']),
      self: NoteLinksSelf.fromJson(json['self']),
    );
  }

  NoteLinksAbout about;

  NoteLinksAuthor author;

  NoteLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is NoteLinks &&
        runtimeType == other.runtimeType &&
        about == other.about &&
        author == other.author &&
        self == other.self;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= about?.hashCode ?? 0;
    hashCode ^= author?.hashCode ?? 0;
    hashCode ^= self?.hashCode ?? 0;

    return hashCode;
  }

  static List<NoteLinks> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => NoteLinks.fromJson(value))?.toList() ??
        <NoteLinks>[];
  }

  static Map<String, NoteLinks> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, NoteLinks>((String key, dynamic value) {
          return MapEntry(key, NoteLinks.fromJson(value));
        }) ??
        <String, NoteLinks>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (about != null) 'about': about.toJson(),
      if (author != null) 'author': author.toJson(),
      if (self != null) 'self': self.toJson(),
    };
  }

  @override
  String toString() {
    return 'NoteLinks[about=$about, author=$author, self=$self, ]';
  }
}
