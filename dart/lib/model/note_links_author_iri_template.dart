part of keyclic_sdk_api.api;

class NoteLinksAuthorIriTemplate {
  NoteLinksAuthorIriTemplate({
    this.mapping,
  });

  factory NoteLinksAuthorIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return NoteLinksAuthorIriTemplate(
      mapping: ContributionLinksContributorIriTemplateMapping.fromJson(
          json['mapping']),
    );
  }

  ContributionLinksContributorIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is NoteLinksAuthorIriTemplate &&
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

  static List<NoteLinksAuthorIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => NoteLinksAuthorIriTemplate.fromJson(value))
            ?.toList() ??
        <NoteLinksAuthorIriTemplate>[];
  }

  static Map<String, NoteLinksAuthorIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, NoteLinksAuthorIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, NoteLinksAuthorIriTemplate.fromJson(value));
        }) ??
        <String, NoteLinksAuthorIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'NoteLinksAuthorIriTemplate[mapping=$mapping, ]';
  }
}
