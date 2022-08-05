part of keyclic_sdk_api.api;

class AssignmentLinksMember {
  AssignmentLinksMember({
    this.href,
    this.iriTemplate,
  });

  factory AssignmentLinksMember.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AssignmentLinksMember(
      href: json['href'],
      iriTemplate:
          AssignmentLinksMemberIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the member associated to the given assignment. */
  String href;

  AssignmentLinksMemberIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentLinksMember &&
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

  static List<AssignmentLinksMember> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => AssignmentLinksMember.fromJson(value))
            ?.toList() ??
        <AssignmentLinksMember>[];
  }

  static Map<String, AssignmentLinksMember> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, AssignmentLinksMember>((String key, dynamic value) {
          return MapEntry(key, AssignmentLinksMember.fromJson(value));
        }) ??
        <String, AssignmentLinksMember>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'AssignmentLinksMember[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
