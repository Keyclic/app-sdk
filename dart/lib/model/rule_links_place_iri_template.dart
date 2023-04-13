part of keyclic_sdk_api.api;

class RuleLinksPlaceIriTemplate {
  RuleLinksPlaceIriTemplate({
    this.mapping,
  });

  factory RuleLinksPlaceIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return RuleLinksPlaceIriTemplate(
      mapping: BookmarkLinksPlaceIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  BookmarkLinksPlaceIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RuleLinksPlaceIriTemplate &&
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

  static List<RuleLinksPlaceIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => RuleLinksPlaceIriTemplate.fromJson(value))
            ?.toList() ??
        <RuleLinksPlaceIriTemplate>[];
  }

  static Map<String, RuleLinksPlaceIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, RuleLinksPlaceIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, RuleLinksPlaceIriTemplate.fromJson(value));
        }) ??
        <String, RuleLinksPlaceIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'RuleLinksPlaceIriTemplate[mapping=$mapping, ]';
  }
}
