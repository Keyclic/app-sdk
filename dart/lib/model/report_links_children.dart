part of keyclic_sdk_api.api;

class ReportLinksChildren {
  ReportLinksChildren({
    this.href,
    this.iriTemplate,
  });

  factory ReportLinksChildren.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportLinksChildren(
      href: json['href'],
      iriTemplate: ReportLinksChildrenIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the children associated to the given report. */
  String href;

  ReportLinksChildrenIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksChildren &&
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

  static List<ReportLinksChildren> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ReportLinksChildren.fromJson(value))
            ?.toList() ??
        <ReportLinksChildren>[];
  }

  static Map<String, ReportLinksChildren> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ReportLinksChildren>((String key, dynamic value) {
          return MapEntry(key, ReportLinksChildren.fromJson(value));
        }) ??
        <String, ReportLinksChildren>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'ReportLinksChildren[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
