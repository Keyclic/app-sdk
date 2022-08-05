part of keyclic_sdk_api.api;

class OperationLinksAssignments {
  OperationLinksAssignments({
    this.href,
    this.iriTemplate,
  });

  factory OperationLinksAssignments.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksAssignments(
      href: json['href'],
      iriTemplate:
          OperationLinksAssignmentsIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the assignments associated to the given operation. */
  String href;

  OperationLinksAssignmentsIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksAssignments &&
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

  static List<OperationLinksAssignments> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => OperationLinksAssignments.fromJson(value))
            ?.toList() ??
        <OperationLinksAssignments>[];
  }

  static Map<String, OperationLinksAssignments> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, OperationLinksAssignments>(
            (String key, dynamic value) {
          return MapEntry(key, OperationLinksAssignments.fromJson(value));
        }) ??
        <String, OperationLinksAssignments>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'OperationLinksAssignments[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
