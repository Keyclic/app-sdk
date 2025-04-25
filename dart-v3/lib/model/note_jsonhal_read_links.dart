//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class NoteJsonhalReadLinks {
  /// Returns a new [NoteJsonhalReadLinks] instance.
  NoteJsonhalReadLinks({
    this.self,
    this.author,
    this.about,
  });

  /// Returns a new [NoteJsonhalReadLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static NoteJsonhalReadLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return NoteJsonhalReadLinks(
      self: GetPlaceCollection200ResponseLinksSelf.fromJson(json[r'self']),
      author: GetPlaceCollection200ResponseLinksFirst.fromJson(json[r'author']),
      about: GetPlaceCollection200ResponseLinksSelf.fromJson(json[r'about']),
    );
  }

  GetPlaceCollection200ResponseLinksSelf? self;

  GetPlaceCollection200ResponseLinksFirst? author;

  GetPlaceCollection200ResponseLinksSelf? about;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is NoteJsonhalReadLinks &&
        other.self == self &&
        other.author == author &&
        other.about == about;
  }

  @override
  int get hashCode =>
      (self == null ? 0 : self.hashCode) +
      (author == null ? 0 : author.hashCode) +
      (about == null ? 0 : about.hashCode);

  static List<NoteJsonhalReadLinks> listFromJson(Iterable? json) {
    if (json == null) {
      return <NoteJsonhalReadLinks>[];
    }

    return json.fold(<NoteJsonhalReadLinks>[],
        (List<NoteJsonhalReadLinks> previousValue, element) {
      final NoteJsonhalReadLinks? object =
          NoteJsonhalReadLinks.fromJson(element);
      if (object is NoteJsonhalReadLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, NoteJsonhalReadLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, NoteJsonhalReadLinks>{};
    }

    return json.entries.fold(<String, NoteJsonhalReadLinks>{},
        (Map<String, NoteJsonhalReadLinks> previousValue, element) {
      final NoteJsonhalReadLinks? object =
          NoteJsonhalReadLinks.fromJson(element.value);
      if (object is NoteJsonhalReadLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of NoteJsonhalReadLinks-objects as value to a dart map
  static Map<String, List<NoteJsonhalReadLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<NoteJsonhalReadLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<NoteJsonhalReadLinks>>(
          key, NoteJsonhalReadLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'NoteJsonhalReadLinks[self=$self, author=$author, about=$about]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^self\.').hasMatch(key)))
        r'self': self?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^self\.'))) {
            previousValue.add(element.split(RegExp(r'^self\.')).last);
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
      if (keys == null || keys.any((key) => RegExp(r'^about\.').hasMatch(key)))
        r'about': about?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^about\.'))) {
            previousValue.add(element.split(RegExp(r'^about\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
