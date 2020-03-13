part of keyclic_sdk_api.api;

class PlaceLinksContainedInPlace {
  PlaceLinksContainedInPlace({
    this.href,
    this.iriTemplate,
  });

  factory PlaceLinksContainedInPlace.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceLinksContainedInPlace(
      href: json['href'],
      iriTemplate:
          PlaceLinksContainedInPlaceIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the containedInPlace associated to the given place. */
  String href;

  PlaceLinksContainedInPlaceIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksContainedInPlace &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= href?.hashCode ?? 0;
    hashCode ^= iriTemplate?.hashCode ?? 0;

    return hashCode;
  }

  static List<PlaceLinksContainedInPlace> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PlaceLinksContainedInPlace.fromJson(value))
            ?.toList() ??
        <PlaceLinksContainedInPlace>[];
  }

  static Map<String, PlaceLinksContainedInPlace> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, PlaceLinksContainedInPlace>(
            (String key, dynamic value) {
          return MapEntry(key, PlaceLinksContainedInPlace.fromJson(value));
        }) ??
        <String, PlaceLinksContainedInPlace>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'PlaceLinksContainedInPlace[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
