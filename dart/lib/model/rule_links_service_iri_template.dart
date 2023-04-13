part of keyclic_sdk_api.api;

class RuleLinksServiceIriTemplate {
  RuleLinksServiceIriTemplate({
    this.mapping,
  });

  factory RuleLinksServiceIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return RuleLinksServiceIriTemplate(
      mapping:
          AssignmentLinksServiceIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  AssignmentLinksServiceIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RuleLinksServiceIriTemplate &&
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

  static List<RuleLinksServiceIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map(
                (dynamic value) => RuleLinksServiceIriTemplate.fromJson(value))
            ?.toList() ??
        <RuleLinksServiceIriTemplate>[];
  }

  static Map<String, RuleLinksServiceIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, RuleLinksServiceIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, RuleLinksServiceIriTemplate.fromJson(value));
        }) ??
        <String, RuleLinksServiceIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'RuleLinksServiceIriTemplate[mapping=$mapping, ]';
  }
}
