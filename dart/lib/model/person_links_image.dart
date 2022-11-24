//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PersonLinksImage {
  /// Returns a new [PersonLinksImage] instance.
  PersonLinksImage({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [PersonLinksImage] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PersonLinksImage.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PersonLinksImage(
      href: json[r'href'],
      iriTemplate: PersonLinksImageIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the image associated to the given person.
  String href;

  PersonLinksImageIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PersonLinksImage &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<PersonLinksImage> listFromJson(List<dynamic> json) {
    return <PersonLinksImage>[
      if (json is List)
        for (dynamic value in json) PersonLinksImage.fromJson(value),
    ];
  }

  static Map<String, PersonLinksImage> mapFromJson(Map<String, dynamic> json) {
    return <String, PersonLinksImage>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PersonLinksImage.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PersonLinksImage-objects as value to a dart map
  static Map<String, List<PersonLinksImage>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PersonLinksImage>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PersonLinksImage.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PersonLinksImage[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
