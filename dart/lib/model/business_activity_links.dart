//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BusinessActivityLinks {
  /// Returns a new [BusinessActivityLinks] instance.
  BusinessActivityLinks({
    this.image,
    this.schema,
    this.self,
    this.thumbnail,
  });

  /// Returns a new [BusinessActivityLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BusinessActivityLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessActivityLinks(
      image: BusinessActivityLinksImage.fromJson(json[r'image']),
      schema: BusinessActivityLinksSchema.fromJson(json[r'schema']),
      self: BusinessActivityLinksSelf.fromJson(json[r'self']),
      thumbnail: BusinessActivityLinksThumbnail.fromJson(json[r'thumbnail']),
    );
  }

  BusinessActivityLinksImage? image;

  BusinessActivityLinksSchema? schema;

  BusinessActivityLinksSelf? self;

  BusinessActivityLinksThumbnail? thumbnail;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivityLinks &&
        other.image == image &&
        other.schema == schema &&
        other.self == self &&
        other.thumbnail == thumbnail;
  }

  @override
  int get hashCode =>
      (image == null ? 0 : image.hashCode) +
      (schema == null ? 0 : schema.hashCode) +
      (self == null ? 0 : self.hashCode) +
      (thumbnail == null ? 0 : thumbnail.hashCode);

  static List<BusinessActivityLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <BusinessActivityLinks>[];
    }
    return json
        .map((value) {
          return BusinessActivityLinks.fromJson(value);
        })
        .whereType<BusinessActivityLinks>()
        .toList();
  }

  static Map<String, BusinessActivityLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BusinessActivityLinks>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, BusinessActivityLinks?>(
            key, BusinessActivityLinks.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, BusinessActivityLinks>;
  }

  // maps a json object with a list of BusinessActivityLinks-objects as value to a dart map
  static Map<String, List<BusinessActivityLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<BusinessActivityLinks>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: BusinessActivityLinks.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'BusinessActivityLinks[image=$image, schema=$schema, self=$self, thumbnail=$thumbnail]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (image != null) r'image': image,
      if (schema != null) r'schema': schema,
      if (self != null) r'self': self,
      if (thumbnail != null) r'thumbnail': thumbnail,
    };
  }
}
