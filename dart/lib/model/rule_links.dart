//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class RuleLinks {
  /// Returns a new [RuleLinks] instance.
  RuleLinks({
    this.category,
    this.place,
    this.self,
    this.service,
  });

  /// Returns a new [RuleLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RuleLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RuleLinks(
      category: RuleLinksCategory.fromJson(json[r'category']),
      place: RuleLinksPlace.fromJson(json[r'place']),
      self: RuleLinksSelf.fromJson(json[r'self']),
      service: RuleLinksService.fromJson(json[r'service']),
    );
  }

  RuleLinksCategory? category;

  RuleLinksPlace? place;

  RuleLinksSelf? self;

  RuleLinksService? service;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RuleLinks &&
        other.category == category &&
        other.place == place &&
        other.self == self &&
        other.service == service;
  }

  @override
  int get hashCode =>
      (category == null ? 0 : category.hashCode) +
      (place == null ? 0 : place.hashCode) +
      (self == null ? 0 : self.hashCode) +
      (service == null ? 0 : service.hashCode);

  static List<RuleLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <RuleLinks>[];
    }

    return json.fold(<RuleLinks>[], (List<RuleLinks> previousValue, element) {
      final RuleLinks? object = RuleLinks.fromJson(element);
      if (object is RuleLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, RuleLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RuleLinks>{};
    }

    return json.entries.fold(<String, RuleLinks>{},
        (Map<String, RuleLinks> previousValue, element) {
      final RuleLinks? object = RuleLinks.fromJson(element.value);
      if (object is RuleLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of RuleLinks-objects as value to a dart map
  static Map<String, List<RuleLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<RuleLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<RuleLinks>>(
          key, RuleLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'RuleLinks[category=$category, place=$place, self=$self, service=$service]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && category != null) ||
          (keys?.contains(r'category') ?? false))
        r'category': category?.toJson(),
      if ((keys == null && place != null) ||
          (keys?.contains(r'place') ?? false))
        r'place': place?.toJson(),
      if ((keys == null && self != null) || (keys?.contains(r'self') ?? false))
        r'self': self?.toJson(),
      if ((keys == null && service != null) ||
          (keys?.contains(r'service') ?? false))
        r'service': service?.toJson(),
    };
  }
}
