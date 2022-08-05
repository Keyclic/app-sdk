part of keyclic_sdk_api.api;

class AssignmentLinksMemberIriTemplate {
  AssignmentLinksMemberIriTemplate({
    this.mapping,
  });

  factory AssignmentLinksMemberIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AssignmentLinksMemberIriTemplate(
      mapping:
          AssignmentLinksMemberIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  AssignmentLinksMemberIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentLinksMemberIriTemplate &&
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

  static List<AssignmentLinksMemberIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                AssignmentLinksMemberIriTemplate.fromJson(value))
            ?.toList() ??
        <AssignmentLinksMemberIriTemplate>[];
  }

  static Map<String, AssignmentLinksMemberIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, AssignmentLinksMemberIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, AssignmentLinksMemberIriTemplate.fromJson(value));
        }) ??
        <String, AssignmentLinksMemberIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'AssignmentLinksMemberIriTemplate[mapping=$mapping, ]';
  }
}
