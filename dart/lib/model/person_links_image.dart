//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PersonLinksImage {
  /// Returns a new [PersonLinksImage] instance.
  PersonLinksImage({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [PersonLinksImage] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PersonLinksImage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PersonLinksImage(
      href: json[r'href'],
      iriTemplate: PersonLinksImageIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the image associated to the given person.
  String? href;

  PersonLinksImageIriTemplate? iriTemplate;

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

  static List<PersonLinksImage> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PersonLinksImage>[];
    }

    return json.fold(<PersonLinksImage>[],
        (List<PersonLinksImage> previousValue, element) {
      final PersonLinksImage? object = PersonLinksImage.fromJson(element);
      if (object is PersonLinksImage) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PersonLinksImage> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PersonLinksImage>{};
    }

    return json.entries.fold(<String, PersonLinksImage>{},
        (Map<String, PersonLinksImage> previousValue, element) {
      final PersonLinksImage? object = PersonLinksImage.fromJson(element.value);
      if (object is PersonLinksImage) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PersonLinksImage-objects as value to a dart map
  static Map<String, List<PersonLinksImage>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PersonLinksImage>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PersonLinksImage>>(
          key, PersonLinksImage.listFromJson(value));
    });
  }

  @override
  String toString() => 'PersonLinksImage[href=$href, iriTemplate=$iriTemplate]';

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
