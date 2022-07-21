part of keyclic_sdk_api.api;

class OperationLinksAssignees {
  OperationLinksAssignees({
    this.href,
    this.iriTemplate,
  });

  factory OperationLinksAssignees.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksAssignees(
      href: json['href'],
      iriTemplate:
          OperationLinksAssigneesIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the assignees associated to the given operation. */
  String href;

  OperationLinksAssigneesIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksAssignees &&
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

  static List<OperationLinksAssignees> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => OperationLinksAssignees.fromJson(value))
            ?.toList() ??
        <OperationLinksAssignees>[];
  }

  static Map<String, OperationLinksAssignees> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, OperationLinksAssignees>((String key, dynamic value) {
          return MapEntry(key, OperationLinksAssignees.fromJson(value));
        }) ??
        <String, OperationLinksAssignees>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'OperationLinksAssignees[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
