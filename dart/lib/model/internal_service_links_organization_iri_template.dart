part of keyclic_sdk_api.api;

class InternalServiceLinksOrganizationIriTemplate {
  InternalServiceLinksOrganizationIriTemplate({
    this.mapping,
  });

  InternalServiceLinksOrganizationIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        CategoryLinksOrganizationIriTemplateMapping.fromJson(json['mapping']);
  }

  CategoryLinksOrganizationIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServiceLinksOrganizationIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ mapping.hashCode;

  static List<InternalServiceLinksOrganizationIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <InternalServiceLinksOrganizationIriTemplate>[]
        : json
            .map((value) =>
                InternalServiceLinksOrganizationIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, InternalServiceLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, InternalServiceLinksOrganizationIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] =
          InternalServiceLinksOrganizationIriTemplate.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'InternalServiceLinksOrganizationIriTemplate[mapping=$mapping, ]';
  }
}