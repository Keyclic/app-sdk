//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

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
  static PlaceLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlaceLinks(
      children: json[r'children'] is! Map
          ? null
          : PlaceLinksChildren.fromJson(json[r'children']),
      geo: json[r'geo'] is! Map ? null : PlaceLinksGeo.fromJson(json[r'geo']),
      organization: json[r'organization'] is! Map
          ? null
          : PlaceLinksOrganization.fromJson(json[r'organization']),
      plans: json[r'plans'] is! Map
          ? null
          : PlaceLinksPlans.fromJson(json[r'plans']),
      self:
          json[r'self'] is! Map ? null : PlaceLinksSelf.fromJson(json[r'self']),
    );
  }

  PlaceLinksChildren? children;

  PlaceLinksGeo? geo;

  PlaceLinksOrganization? organization;

  PlaceLinksPlans? plans;

  PlaceLinksSelf? self;

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

  static List<PlaceLinks> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <PlaceLinks>[];
    }

    return json.fold(<PlaceLinks>[], (List<PlaceLinks> previousValue, element) {
      final PlaceLinks? object = PlaceLinks.fromJson(element);
      if (object is PlaceLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlaceLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceLinks>{};
    }

    return json.entries.fold(<String, PlaceLinks>{},
        (Map<String, PlaceLinks> previousValue, element) {
      final PlaceLinks? object = PlaceLinks.fromJson(element.value);
      if (object is PlaceLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlaceLinks-objects as value to a dart map
  static Map<String, List<PlaceLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlaceLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlaceLinks>>(
          key, PlaceLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PlaceLinks[children=$children, geo=$geo, organization=$organization, plans=$plans, self=$self]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && children != null) ||
          (keys?.contains(r'children') ?? false))
        r'children': children?.toJson(),
      if ((keys == null && geo != null) || (keys?.contains(r'geo') ?? false))
        r'geo': geo?.toJson(),
      if ((keys == null && organization != null) ||
          (keys?.contains(r'organization') ?? false))
        r'organization': organization?.toJson(),
      if ((keys == null && plans != null) ||
          (keys?.contains(r'plans') ?? false))
        r'plans': plans?.toJson(),
      if ((keys == null && self != null) || (keys?.contains(r'self') ?? false))
        r'self': self?.toJson(),
    };
  }
}
