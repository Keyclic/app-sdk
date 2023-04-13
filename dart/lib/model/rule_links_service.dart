part of keyclic_sdk_api.api;

class RuleLinksService {
  RuleLinksService({
    this.href,
    this.iriTemplate,
  });

  factory RuleLinksService.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return RuleLinksService(
      href: json['href'],
      iriTemplate: RuleLinksServiceIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the service associated to the given rule. */
  String href;

  RuleLinksServiceIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RuleLinksService &&
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

  static List<RuleLinksService> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => RuleLinksService.fromJson(value))
            ?.toList() ??
        <RuleLinksService>[];
  }

  static Map<String, RuleLinksService> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, RuleLinksService>((String key, dynamic value) {
          return MapEntry(key, RuleLinksService.fromJson(value));
        }) ??
        <String, RuleLinksService>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'RuleLinksService[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
