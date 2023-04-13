part of keyclic_sdk_api.api;

class RuleLinksCategoryIriTemplate {
  RuleLinksCategoryIriTemplate({
    this.mapping,
  });

  factory RuleLinksCategoryIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return RuleLinksCategoryIriTemplate(
      mapping: CategoryLinksSelfIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  CategoryLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RuleLinksCategoryIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= mapping?.hashCode ?? 0;

    return hashCode;
  }

  static List<RuleLinksCategoryIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map(
                (dynamic value) => RuleLinksCategoryIriTemplate.fromJson(value))
            ?.toList() ??
        <RuleLinksCategoryIriTemplate>[];
  }

  static Map<String, RuleLinksCategoryIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, RuleLinksCategoryIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, RuleLinksCategoryIriTemplate.fromJson(value));
        }) ??
        <String, RuleLinksCategoryIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'RuleLinksCategoryIriTemplate[mapping=$mapping, ]';
  }
}
