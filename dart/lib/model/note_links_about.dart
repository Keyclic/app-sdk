//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class NoteLinksAbout {
  /// Returns a new [NoteLinksAbout] instance.
  NoteLinksAbout({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [NoteLinksAbout] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory NoteLinksAbout.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return NoteLinksAbout(
      href: json[r'href'],
      iriTemplate: NoteLinksAboutIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the about associated to the given note.
  String href;

  NoteLinksAboutIriTemplate iriTemplate;

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

  static List<NoteLinksAbout> listFromJson(List<dynamic> json) {
    return <NoteLinksAbout>[
      if (json is List)
        for (dynamic value in json) NoteLinksAbout.fromJson(value),
    ];
  }

  static Map<String, NoteLinksAbout> mapFromJson(Map<String, dynamic> json) {
    return <String, NoteLinksAbout>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: NoteLinksAbout.fromJson(entry.value),
    };
  }

  // maps a json object with a list of NoteLinksAbout-objects as value to a dart map
  static Map<String, List<NoteLinksAbout>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<NoteLinksAbout>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: NoteLinksAbout.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'NoteLinksAbout[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
