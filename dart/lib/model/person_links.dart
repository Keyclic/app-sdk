//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PersonLinks {
  /// Returns a new [PersonLinks] instance.
  PersonLinks({
    this.image,
    this.self,
  });

  /// Returns a new [PersonLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PersonLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PersonLinks(
      image: json[r'image'] is! Map
          ? null
          : PersonLinksImage.fromJson(json[r'image']),
      self: json[r'self'] is! Map
          ? null
          : PersonLinksSelf.fromJson(json[r'self']),
    );
  }

  PersonLinksImage? image;

  PersonLinksSelf? self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PersonLinks && other.image == image && other.self == self;
  }

  @override
  int get hashCode =>
      (image == null ? 0 : image.hashCode) + (self == null ? 0 : self.hashCode);

  static List<PersonLinks> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <PersonLinks>[];
    }

    return json.fold(<PersonLinks>[],
        (List<PersonLinks> previousValue, element) {
      final PersonLinks? object = PersonLinks.fromJson(element);
      if (object is PersonLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PersonLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PersonLinks>{};
    }

    return json.entries.fold(<String, PersonLinks>{},
        (Map<String, PersonLinks> previousValue, element) {
      final PersonLinks? object = PersonLinks.fromJson(element.value);
      if (object is PersonLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PersonLinks-objects as value to a dart map
  static Map<String, List<PersonLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PersonLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PersonLinks>>(
          key, PersonLinks.listFromJson(value));
    });
  }

  @override
  String toString() => 'PersonLinks[image=$image, self=$self]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && image != null) ||
          (keys?.contains(r'image') ?? false))
        r'image': image?.toJson(),
      if ((keys == null && self != null) || (keys?.contains(r'self') ?? false))
        r'self': self?.toJson(),
    };
  }
}
