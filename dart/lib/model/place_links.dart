part of keyclic_sdk_api.api;

class PlaceLinks {
  PlaceLinks({
    this.children,
    this.geo,
    this.organization,
    this.plans,
    this.self,
  });

  factory PlaceLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceLinks(
      children: PlaceLinksChildren.fromJson(json['children']),
      geo: PlaceLinksGeo.fromJson(json['geo']),
      organization: PlaceLinksOrganization.fromJson(json['organization']),
      plans: PlaceLinksPlans.fromJson(json['plans']),
      self: PlaceLinksSelf.fromJson(json['self']),
    );
  }

  PlaceLinksChildren children;

  PlaceLinksGeo geo;

  PlaceLinksOrganization organization;

  PlaceLinksPlans plans;

  PlaceLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinks &&
        runtimeType == other.runtimeType &&
        children == other.children &&
        geo == other.geo &&
        organization == other.organization &&
        plans == other.plans &&
        self == other.self;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= children?.hashCode ?? 0;
    hashCode ^= geo?.hashCode ?? 0;
    hashCode ^= organization?.hashCode ?? 0;
    hashCode ^= plans?.hashCode ?? 0;
    hashCode ^= self?.hashCode ?? 0;

    return hashCode;
  }

  static List<PlaceLinks> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => PlaceLinks.fromJson(value))?.toList() ??
        <PlaceLinks>[];
  }

  static Map<String, PlaceLinks> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, PlaceLinks>((String key, dynamic value) {
          return MapEntry(key, PlaceLinks.fromJson(value));
        }) ??
        <String, PlaceLinks>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (children != null) 'children': children.toJson(),
      if (geo != null) 'geo': geo.toJson(),
      if (organization != null) 'organization': organization.toJson(),
      if (plans != null) 'plans': plans.toJson(),
      if (self != null) 'self': self.toJson(),
    };
  }

  @override
  String toString() {
    return 'PlaceLinks[children=$children, geo=$geo, organization=$organization, plans=$plans, self=$self, ]';
  }
}
