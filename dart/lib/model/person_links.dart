//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PersonLinks {
  /// Returns a new [PersonLinks] instance.
  PersonLinks({
    this.image,
    this.self,
  });

  /// Returns a new [PersonLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PersonLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PersonLinks(
      image: PersonLinksImage.fromJson(json[r'image']),
      self: PersonLinksSelf.fromJson(json[r'self']),
    );
  }

  PersonLinksImage image;

  PersonLinksSelf self;

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

  static List<PersonLinks> listFromJson(List<dynamic> json) {
    return <PersonLinks>[
      if (json is List)
        for (dynamic value in json) PersonLinks.fromJson(value),
    ];
  }

  static Map<String, PersonLinks> mapFromJson(Map<String, dynamic> json) {
    return <String, PersonLinks>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PersonLinks.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PersonLinks-objects as value to a dart map
  static Map<String, List<PersonLinks>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PersonLinks>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PersonLinks.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PersonLinks[image=$image, self=$self]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (image != null) r'image': image,
      if (self != null) r'self': self,
    };
  }
}
