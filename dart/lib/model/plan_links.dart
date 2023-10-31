//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

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
  static PlanLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlanLinks(
      image: PlanLinksImage.fromJson(json[r'image']),
      place: PlanLinksPlace.fromJson(json[r'place']),
      self: PlanLinksSelf.fromJson(json[r'self']),
    );
  }

  PlanLinksImage? image;

  PlanLinksPlace? place;

  PlanLinksSelf? self;

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

  static List<PlanLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PlanLinks>[];
    }

    return json.fold(<PlanLinks>[], (List<PlanLinks> previousValue, element) {
      final PlanLinks? object = PlanLinks.fromJson(element);
      if (object is PlanLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlanLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlanLinks>{};
    }

    return json.entries.fold(<String, PlanLinks>{},
        (Map<String, PlanLinks> previousValue, element) {
      final PlanLinks? object = PlanLinks.fromJson(element.value);
      if (object is PlanLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlanLinks-objects as value to a dart map
  static Map<String, List<PlanLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlanLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlanLinks>>(
          key, PlanLinks.listFromJson(value));
    });
  }

  @override
  String toString() => 'PlanLinks[image=$image, place=$place, self=$self]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && image != null) ||
          (keys?.contains(r'image') ?? false))
        r'image': image?.toJson(),
      if ((keys == null && place != null) ||
          (keys?.contains(r'place') ?? false))
        r'place': place?.toJson(),
      if ((keys == null && self != null) || (keys?.contains(r'self') ?? false))
        r'self': self?.toJson(),
    };
  }
}
