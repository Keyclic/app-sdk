part of keyclic_sdk_api.api;

class PlaceLinksPlansIriTemplate {
  PlaceLinksPlansIriTemplate({
    this.mapping,
  });

  factory PlaceLinksPlansIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceLinksPlansIriTemplate(
      mapping: BookmarkLinksPlaceIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  BookmarkLinksPlaceIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksPlansIriTemplate &&
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

  static List<PlaceLinksPlansIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PlaceLinksPlansIriTemplate.fromJson(value))
            ?.toList() ??
        <PlaceLinksPlansIriTemplate>[];
  }

  static Map<String, PlaceLinksPlansIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, PlaceLinksPlansIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, PlaceLinksPlansIriTemplate.fromJson(value));
        }) ??
        <String, PlaceLinksPlansIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'PlaceLinksPlansIriTemplate[mapping=$mapping, ]';
  }
}
