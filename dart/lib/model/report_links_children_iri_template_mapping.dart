part of keyclic_sdk_api.api;

class ReportLinksChildrenIriTemplateMapping {
  ReportLinksChildrenIriTemplateMapping({
    this.organization,
    this.parent,
  });

  factory ReportLinksChildrenIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportLinksChildrenIriTemplateMapping(
      organization: json['organization'],
      parent: json['parent'],
    );
  }

  String organization;

  String parent;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksChildrenIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        organization == other.organization &&
        parent == other.parent;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= organization?.hashCode ?? 0;
    hashCode ^= parent?.hashCode ?? 0;

    return hashCode;
  }

  static List<ReportLinksChildrenIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                ReportLinksChildrenIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <ReportLinksChildrenIriTemplateMapping>[];
  }

  static Map<String, ReportLinksChildrenIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ReportLinksChildrenIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, ReportLinksChildrenIriTemplateMapping.fromJson(value));
        }) ??
        <String, ReportLinksChildrenIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (organization != null) 'organization': organization,
      if (parent != null) 'parent': parent,
    };
  }

  @override
  String toString() {
    return 'ReportLinksChildrenIriTemplateMapping[organization=$organization, parent=$parent, ]';
  }
}
