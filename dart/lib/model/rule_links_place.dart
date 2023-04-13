part of keyclic_sdk_api.api;

class RuleLinksPlace {
  RuleLinksPlace({
    this.href,
    this.iriTemplate,
  });

  factory RuleLinksPlace.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return RuleLinksPlace(
      href: json['href'],
      iriTemplate: RuleLinksPlaceIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the place associated to the given rule. */
  String href;

  RuleLinksPlaceIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RuleLinksPlace &&
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

  static List<RuleLinksPlace> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => RuleLinksPlace.fromJson(value))
            ?.toList() ??
        <RuleLinksPlace>[];
  }

  static Map<String, RuleLinksPlace> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, RuleLinksPlace>((String key, dynamic value) {
          return MapEntry(key, RuleLinksPlace.fromJson(value));
        }) ??
        <String, RuleLinksPlace>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'RuleLinksPlace[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
