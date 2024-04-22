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
  });

  /// Returns a new [BusinessActivityLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BusinessActivityLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return BusinessActivityLinks(
      image: BusinessActivityLinksImage.fromJson(json[r'image']),
      schema: BusinessActivityLinksSchema.fromJson(json[r'schema']),
      self: BusinessActivityLinksSelf.fromJson(json[r'self']),
    );
  }

  BusinessActivityLinksImage? image;

  BusinessActivityLinksSchema? schema;

  BusinessActivityLinksSelf? self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivityLinks &&
        other.image == image &&
        other.schema == schema &&
        other.self == self;
  }

  @override
  int get hashCode =>
      (image == null ? 0 : image.hashCode) +
      (schema == null ? 0 : schema.hashCode) +
      (self == null ? 0 : self.hashCode);

  static List<BusinessActivityLinks> listFromJson(List<dynamic>? json) {
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
      'BusinessActivityLinks[image=$image, schema=$schema, self=$self]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^image\.').hasMatch(key)))
        r'image': image?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^image\.'))) {
            previousValue.add(element.split(RegExp(r'^image\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^schema\.').hasMatch(key)))
        r'schema': schema?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^schema\.'))) {
            previousValue.add(element.split(RegExp(r'^schema\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^self\.').hasMatch(key)))
        r'self': self?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^self\.'))) {
            previousValue.add(element.split(RegExp(r'^self\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
