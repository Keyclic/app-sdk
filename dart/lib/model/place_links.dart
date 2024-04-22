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
  static PlaceLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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

  static List<PlaceLinks> listFromJson(Iterable? json) {
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

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^children\.').hasMatch(key)))
        r'children': children?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^children\.'))) {
            previousValue.add(element.split(RegExp(r'^children\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^geo\.').hasMatch(key)))
        r'geo': geo?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^geo\.'))) {
            previousValue.add(element.split(RegExp(r'^geo\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^organization\.').hasMatch(key)))
        r'organization': organization?.toJson(keys?.fold<List<String>>(
            <String>[], (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^organization\.'))) {
            previousValue.add(element.split(RegExp(r'^organization\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^plans\.').hasMatch(key)))
        r'plans': plans?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^plans\.'))) {
            previousValue.add(element.split(RegExp(r'^plans\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^self\.').hasMatch(key)))
        r'self': self?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^self\.'))) {
            previousValue.add(element.split(RegExp(r'^self\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
