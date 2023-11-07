//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class NoteLinksAuthor {
  /// Returns a new [NoteLinksAuthor] instance.
  NoteLinksAuthor({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [NoteLinksAuthor] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static NoteLinksAuthor? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NoteLinksAuthor(
      href: json[r'href'],
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : NoteLinksAuthorIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the author associated to the given note.
  String? href;

  NoteLinksAuthorIriTemplate? iriTemplate;

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

  static List<NoteLinksAuthor> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <NoteLinksAuthor>[];
    }

    return json.fold(<NoteLinksAuthor>[],
        (List<NoteLinksAuthor> previousValue, element) {
      final NoteLinksAuthor? object = NoteLinksAuthor.fromJson(element);
      if (object is NoteLinksAuthor) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, NoteLinksAuthor> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, NoteLinksAuthor>{};
    }

    return json.entries.fold(<String, NoteLinksAuthor>{},
        (Map<String, NoteLinksAuthor> previousValue, element) {
      final NoteLinksAuthor? object = NoteLinksAuthor.fromJson(element.value);
      if (object is NoteLinksAuthor) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of NoteLinksAuthor-objects as value to a dart map
  static Map<String, List<NoteLinksAuthor>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<NoteLinksAuthor>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<NoteLinksAuthor>>(
          key, NoteLinksAuthor.listFromJson(value));
    });
  }

  @override
  String toString() => 'NoteLinksAuthor[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && href != null) || (keys?.contains(r'href') ?? false))
        r'href': href,
      if ((keys == null && iriTemplate != null) ||
          (keys?.contains(r'iriTemplate') ?? false))
        r'iriTemplate': iriTemplate?.toJson(),
    };
  }
}
