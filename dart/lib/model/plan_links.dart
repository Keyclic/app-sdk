//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PlanLinks {
  /// Returns a new [PlanLinks] instance.
  PlanLinks({
    this.image,
    this.place,
    this.self,
  });

  /// Returns a new [PlanLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PlanLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlanLinks(
      image: PlanLinksImage.fromJson(json[r'image']),
      place: PlanLinksPlace.fromJson(json[r'place']),
      self: PlanLinksSelf.fromJson(json[r'self']),
    );
  }

  PlanLinksImage image;

  PlanLinksPlace place;

  PlanLinksSelf self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlanLinks &&
        other.image == image &&
        other.place == place &&
        other.self == self;
  }

  @override
  int get hashCode =>
      (image == null ? 0 : image.hashCode) +
      (place == null ? 0 : place.hashCode) +
      (self == null ? 0 : self.hashCode);

  static List<PlanLinks> listFromJson(List<dynamic> json) {
    return <PlanLinks>[
      if (json is List)
        for (dynamic value in json) PlanLinks.fromJson(value),
    ];
  }

  static Map<String, PlanLinks> mapFromJson(Map<String, dynamic> json) {
    return <String, PlanLinks>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlanLinks.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PlanLinks-objects as value to a dart map
  static Map<String, List<PlanLinks>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PlanLinks>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlanLinks.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PlanLinks[image=$image, place=$place, self=$self]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (image != null) r'image': image,
      if (place != null) r'place': place,
      if (self != null) r'self': self,
    };
  }
}
