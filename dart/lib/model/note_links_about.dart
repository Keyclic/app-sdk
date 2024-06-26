//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class NoteLinksAbout {
  /// Returns a new [NoteLinksAbout] instance.
  NoteLinksAbout({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [NoteLinksAbout] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static NoteLinksAbout? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return NoteLinksAbout(
      href: json[r'href'],
      iriTemplate: NoteLinksAboutIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the about associated to the given note.
  String? href;

  NoteLinksAboutIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is NoteLinksAbout &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<NoteLinksAbout> listFromJson(Iterable? json) {
    if (json == null) {
      return <NoteLinksAbout>[];
    }

    return json.fold(<NoteLinksAbout>[],
        (List<NoteLinksAbout> previousValue, element) {
      final NoteLinksAbout? object = NoteLinksAbout.fromJson(element);
      if (object is NoteLinksAbout) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, NoteLinksAbout> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, NoteLinksAbout>{};
    }

    return json.entries.fold(<String, NoteLinksAbout>{},
        (Map<String, NoteLinksAbout> previousValue, element) {
      final NoteLinksAbout? object = NoteLinksAbout.fromJson(element.value);
      if (object is NoteLinksAbout) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of NoteLinksAbout-objects as value to a dart map
  static Map<String, List<NoteLinksAbout>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<NoteLinksAbout>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<NoteLinksAbout>>(
          key, NoteLinksAbout.listFromJson(value));
    });
  }

  @override
  String toString() => 'NoteLinksAbout[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'href')) r'href': href,
      if (keys == null ||
          keys.any((key) => RegExp(r'^iriTemplate\.').hasMatch(key)))
        r'iriTemplate': iriTemplate?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^iriTemplate\.'))) {
            previousValue.add(element.split(RegExp(r'^iriTemplate\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
