part of keyclic_sdk_api.api;

class ReportLinksChildrenIriTemplate {
  ReportLinksChildrenIriTemplate({
    this.mapping,
  });

  factory ReportLinksChildrenIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportLinksChildrenIriTemplate(
      mapping: ReportLinksChildrenIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  ReportLinksChildrenIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksChildrenIriTemplate &&
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

  static List<ReportLinksChildrenIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                ReportLinksChildrenIriTemplate.fromJson(value))
            ?.toList() ??
        <ReportLinksChildrenIriTemplate>[];
  }

  static Map<String, ReportLinksChildrenIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ReportLinksChildrenIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, ReportLinksChildrenIriTemplate.fromJson(value));
        }) ??
        <String, ReportLinksChildrenIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'ReportLinksChildrenIriTemplate[mapping=$mapping, ]';
  }
}
