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
  static NoteLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return NoteLinks(
      about: NoteLinksAbout.fromJson(json[r'about']),
      author: NoteLinksAuthor.fromJson(json[r'author']),
      self: NoteLinksSelf.fromJson(json[r'self']),
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

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^about\.').hasMatch(key)))
        r'about': about?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^about\.'))) {
            previousValue.add(element.split(RegExp(r'^about\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^author\.').hasMatch(key)))
        r'author': author?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^author\.'))) {
            previousValue.add(element.split(RegExp(r'^author\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^self\.').hasMatch(key)))
        r'self': self?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^self\.'))) {
            previousValue.add(element.split(RegExp(r'^self\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
