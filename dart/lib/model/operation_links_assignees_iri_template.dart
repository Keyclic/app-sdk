part of keyclic_sdk_api.api;

class OperationLinksAssigneesIriTemplate {
  OperationLinksAssigneesIriTemplate({
    this.mapping,
  });

  factory OperationLinksAssigneesIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksAssigneesIriTemplate(
      mapping: BookmarkLinksMemberIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  BookmarkLinksMemberIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksAssigneesIriTemplate &&
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

  static List<OperationLinksAssigneesIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                OperationLinksAssigneesIriTemplate.fromJson(value))
            ?.toList() ??
        <OperationLinksAssigneesIriTemplate>[];
  }

  static Map<String, OperationLinksAssigneesIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, OperationLinksAssigneesIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, OperationLinksAssigneesIriTemplate.fromJson(value));
        }) ??
        <String, OperationLinksAssigneesIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'OperationLinksAssigneesIriTemplate[mapping=$mapping, ]';
  }
}
