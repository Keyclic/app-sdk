//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PlaceLinks {
  /// Returns a new [PlaceLinks] instance.
  PlaceLinks({
    this.children,
    this.geo,
    this.organization,
    this.plans,
    this.self,
  });

  /// Returns a new [PlaceLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PlaceLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceLinks(
      children: PlaceLinksChildren.fromJson(json[r'children']),
      geo: PlaceLinksGeo.fromJson(json[r'geo']),
      organization: PlaceLinksOrganization.fromJson(json[r'organization']),
      plans: PlaceLinksPlans.fromJson(json[r'plans']),
      self: PlaceLinksSelf.fromJson(json[r'self']),
    );
  }

  PlaceLinksChildren children;

  PlaceLinksGeo geo;

  PlaceLinksOrganization organization;

  PlaceLinksPlans plans;

  PlaceLinksSelf self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinks &&
        other.children == children &&
        other.geo == geo &&
        other.organization == organization &&
        other.plans == plans &&
        other.self == self;
  }

  @override
  int get hashCode =>
      (children == null ? 0 : children.hashCode) +
      (geo == null ? 0 : geo.hashCode) +
      (organization == null ? 0 : organization.hashCode) +
      (plans == null ? 0 : plans.hashCode) +
      (self == null ? 0 : self.hashCode);

  static List<PlaceLinks> listFromJson(List<dynamic> json) {
    return <PlaceLinks>[
      if (json is List)
        for (dynamic value in json) PlaceLinks.fromJson(value),
    ];
  }

  static Map<String, PlaceLinks> mapFromJson(Map<String, dynamic> json) {
    return <String, PlaceLinks>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlaceLinks.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PlaceLinks-objects as value to a dart map
  static Map<String, List<PlaceLinks>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PlaceLinks>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlaceLinks.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'PlaceLinks[children=$children, geo=$geo, organization=$organization, plans=$plans, self=$self]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (children != null) r'children': children,
      if (geo != null) r'geo': geo,
      if (organization != null) r'organization': organization,
      if (plans != null) r'plans': plans,
      if (self != null) r'self': self,
    };
  }
}
