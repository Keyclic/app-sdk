part of keyclic_sdk_api.api;

class RuleLinksCategory {
  RuleLinksCategory({
    this.href,
    this.iriTemplate,
  });

  factory RuleLinksCategory.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return RuleLinksCategory(
      href: json['href'],
      iriTemplate: RuleLinksCategoryIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the category associated to the given rule. */
  String href;

  RuleLinksCategoryIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RuleLinksCategory &&
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

  static List<RuleLinksCategory> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => RuleLinksCategory.fromJson(value))
            ?.toList() ??
        <RuleLinksCategory>[];
  }

  static Map<String, RuleLinksCategory> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, RuleLinksCategory>((String key, dynamic value) {
          return MapEntry(key, RuleLinksCategory.fromJson(value));
        }) ??
        <String, RuleLinksCategory>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'RuleLinksCategory[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
