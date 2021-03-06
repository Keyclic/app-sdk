part of keyclic_sdk_api.api;

class OrganizationLinksConfigurationIriTemplate {
  OrganizationLinksConfigurationIriTemplate({
    this.mapping,
  });

  factory OrganizationLinksConfigurationIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationLinksConfigurationIriTemplate(
      mapping:
          CategoryLinksOrganizationIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  CategoryLinksOrganizationIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksConfigurationIriTemplate &&
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

  static List<OrganizationLinksConfigurationIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                OrganizationLinksConfigurationIriTemplate.fromJson(value))
            ?.toList() ??
        <OrganizationLinksConfigurationIriTemplate>[];
  }

  static Map<String, OrganizationLinksConfigurationIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, OrganizationLinksConfigurationIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, OrganizationLinksConfigurationIriTemplate.fromJson(value));
        }) ??
        <String, OrganizationLinksConfigurationIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'OrganizationLinksConfigurationIriTemplate[mapping=$mapping, ]';
  }
}
