part of keyclic_sdk_api.api;

class PlaceLinksPlans {
  PlaceLinksPlans({
    this.href,
    this.iriTemplate,
  });

  factory PlaceLinksPlans.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceLinksPlans(
      href: json['href'],
      iriTemplate: PlaceLinksPlansIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the plans associated to the given place. */
  String href;

  PlaceLinksPlansIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksPlans &&
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

  static List<PlaceLinksPlans> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PlaceLinksPlans.fromJson(value))
            ?.toList() ??
        <PlaceLinksPlans>[];
  }

  static Map<String, PlaceLinksPlans> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, PlaceLinksPlans>((String key, dynamic value) {
          return MapEntry(key, PlaceLinksPlans.fromJson(value));
        }) ??
        <String, PlaceLinksPlans>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'PlaceLinksPlans[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
