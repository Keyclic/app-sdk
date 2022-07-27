part of keyclic_sdk_api.api;

class NoteLinksAboutIriTemplate {
  NoteLinksAboutIriTemplate({
    this.mapping,
  });

  factory NoteLinksAboutIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return NoteLinksAboutIriTemplate(
      mapping:
          AssignmentLinksReportIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  AssignmentLinksReportIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is NoteLinksAboutIriTemplate &&
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

  static List<NoteLinksAboutIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => NoteLinksAboutIriTemplate.fromJson(value))
            ?.toList() ??
        <NoteLinksAboutIriTemplate>[];
  }

  static Map<String, NoteLinksAboutIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, NoteLinksAboutIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, NoteLinksAboutIriTemplate.fromJson(value));
        }) ??
        <String, NoteLinksAboutIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'NoteLinksAboutIriTemplate[mapping=$mapping, ]';
  }
}
