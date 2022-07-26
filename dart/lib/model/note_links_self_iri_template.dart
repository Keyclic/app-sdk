part of keyclic_sdk_api.api;

class NoteLinksSelfIriTemplate {
  NoteLinksSelfIriTemplate({
    this.mapping,
  });

  factory NoteLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return NoteLinksSelfIriTemplate(
      mapping: NoteLinksSelfIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  NoteLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is NoteLinksSelfIriTemplate &&
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

  static List<NoteLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => NoteLinksSelfIriTemplate.fromJson(value))
            ?.toList() ??
        <NoteLinksSelfIriTemplate>[];
  }

  static Map<String, NoteLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, NoteLinksSelfIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, NoteLinksSelfIriTemplate.fromJson(value));
        }) ??
        <String, NoteLinksSelfIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'NoteLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
