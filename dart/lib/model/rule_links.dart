part of keyclic_sdk_api.api;

class RuleLinks {
  RuleLinks({
    this.category,
    this.place,
    this.self,
    this.service,
  });

  factory RuleLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return RuleLinks(
      category: RuleLinksCategory.fromJson(json['category']),
      place: RuleLinksPlace.fromJson(json['place']),
      self: RuleLinksSelf.fromJson(json['self']),
      service: RuleLinksService.fromJson(json['service']),
    );
  }

  RuleLinksCategory category;

  RuleLinksPlace place;

  RuleLinksSelf self;

  RuleLinksService service;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RuleLinks &&
        runtimeType == other.runtimeType &&
        category == other.category &&
        place == other.place &&
        self == other.self &&
        service == other.service;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= category?.hashCode ?? 0;
    hashCode ^= place?.hashCode ?? 0;
    hashCode ^= self?.hashCode ?? 0;
    hashCode ^= service?.hashCode ?? 0;

    return hashCode;
  }

  static List<RuleLinks> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => RuleLinks.fromJson(value))?.toList() ??
        <RuleLinks>[];
  }

  static Map<String, RuleLinks> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, RuleLinks>((String key, dynamic value) {
          return MapEntry(key, RuleLinks.fromJson(value));
        }) ??
        <String, RuleLinks>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (category != null) 'category': category.toJson(),
      if (place != null) 'place': place.toJson(),
      if (self != null) 'self': self.toJson(),
      if (service != null) 'service': service.toJson(),
    };
  }

  @override
  String toString() {
    return 'RuleLinks[category=$category, place=$place, self=$self, service=$service, ]';
  }
}
