part of keyclic_sdk_api.api;

class AssignmentLinksMemberIriTemplateMapping {
  AssignmentLinksMemberIriTemplateMapping({
    this.member,
  });

  factory AssignmentLinksMemberIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AssignmentLinksMemberIriTemplateMapping(
      member: json['member'],
    );
  }

  String member;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentLinksMemberIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        member == other.member;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= member?.hashCode ?? 0;

    return hashCode;
  }

  static List<AssignmentLinksMemberIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                AssignmentLinksMemberIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <AssignmentLinksMemberIriTemplateMapping>[];
  }

  static Map<String, AssignmentLinksMemberIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, AssignmentLinksMemberIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, AssignmentLinksMemberIriTemplateMapping.fromJson(value));
        }) ??
        <String, AssignmentLinksMemberIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (member != null) 'member': member,
    };
  }

  @override
  String toString() {
    return 'AssignmentLinksMemberIriTemplateMapping[member=$member, ]';
  }
}
