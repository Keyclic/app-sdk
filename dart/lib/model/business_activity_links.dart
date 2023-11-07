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
      image: json[r'image'] is! Map
          ? null
          : BusinessActivityLinksImage.fromJson(json[r'image']),
      schema: json[r'schema'] is! Map
          ? null
          : BusinessActivityLinksSchema.fromJson(json[r'schema']),
      self: json[r'self'] is! Map
          ? null
          : BusinessActivityLinksSelf.fromJson(json[r'self']),
      thumbnail: json[r'thumbnail'] is! Map
          ? null
          : BusinessActivityLinksThumbnail.fromJson(json[r'thumbnail']),
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

  static List<BusinessActivityLinks> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <BusinessActivityLinks>[];
    }

    return json.fold(<BusinessActivityLinks>[],
        (List<BusinessActivityLinks> previousValue, element) {
      final BusinessActivityLinks? object =
          BusinessActivityLinks.fromJson(element);
      if (object is BusinessActivityLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BusinessActivityLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BusinessActivityLinks>{};
    }

    return json.entries.fold(<String, BusinessActivityLinks>{},
        (Map<String, BusinessActivityLinks> previousValue, element) {
      final BusinessActivityLinks? object =
          BusinessActivityLinks.fromJson(element.value);
      if (object is BusinessActivityLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BusinessActivityLinks-objects as value to a dart map
  static Map<String, List<BusinessActivityLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BusinessActivityLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BusinessActivityLinks>>(
          key, BusinessActivityLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'BusinessActivityLinks[image=$image, schema=$schema, self=$self, thumbnail=$thumbnail]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && image != null) ||
          (keys?.contains(r'image') ?? false))
        r'image': image?.toJson(),
      if ((keys == null && schema != null) ||
          (keys?.contains(r'schema') ?? false))
        r'schema': schema?.toJson(),
      if ((keys == null && self != null) || (keys?.contains(r'self') ?? false))
        r'self': self?.toJson(),
      if ((keys == null && thumbnail != null) ||
          (keys?.contains(r'thumbnail') ?? false))
        r'thumbnail': thumbnail?.toJson(),
    };
  }
}
