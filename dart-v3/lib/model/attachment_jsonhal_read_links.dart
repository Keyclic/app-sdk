//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class AttachmentJsonhalReadLinks {
  /// Returns a new [AttachmentJsonhalReadLinks] instance.
  AttachmentJsonhalReadLinks({
    this.self,
    this.attachedTo,
    this.resource,
  });

  /// Returns a new [AttachmentJsonhalReadLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AttachmentJsonhalReadLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return AttachmentJsonhalReadLinks(
      self: GetPlaceCollection200ResponseLinksSelf.fromJson(json[r'self']),
      attachedTo:
          GetPlaceCollection200ResponseLinksSelf.fromJson(json[r'attachedTo']),
      resource:
          GetPlaceCollection200ResponseLinksSelf.fromJson(json[r'resource']),
    );
  }

  GetPlaceCollection200ResponseLinksSelf? self;

  GetPlaceCollection200ResponseLinksSelf? attachedTo;

  GetPlaceCollection200ResponseLinksSelf? resource;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AttachmentJsonhalReadLinks &&
        other.self == self &&
        other.attachedTo == attachedTo &&
        other.resource == resource;
  }

  @override
  int get hashCode =>
      (self == null ? 0 : self.hashCode) +
      (attachedTo == null ? 0 : attachedTo.hashCode) +
      (resource == null ? 0 : resource.hashCode);

  static List<AttachmentJsonhalReadLinks> listFromJson(Iterable? json) {
    if (json == null) {
      return <AttachmentJsonhalReadLinks>[];
    }

    return json.fold(<AttachmentJsonhalReadLinks>[],
        (List<AttachmentJsonhalReadLinks> previousValue, element) {
      final AttachmentJsonhalReadLinks? object =
          AttachmentJsonhalReadLinks.fromJson(element);
      if (object is AttachmentJsonhalReadLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AttachmentJsonhalReadLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AttachmentJsonhalReadLinks>{};
    }

    return json.entries.fold(<String, AttachmentJsonhalReadLinks>{},
        (Map<String, AttachmentJsonhalReadLinks> previousValue, element) {
      final AttachmentJsonhalReadLinks? object =
          AttachmentJsonhalReadLinks.fromJson(element.value);
      if (object is AttachmentJsonhalReadLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AttachmentJsonhalReadLinks-objects as value to a dart map
  static Map<String, List<AttachmentJsonhalReadLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AttachmentJsonhalReadLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AttachmentJsonhalReadLinks>>(
          key, AttachmentJsonhalReadLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'AttachmentJsonhalReadLinks[self=$self, attachedTo=$attachedTo, resource=$resource]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^self\.').hasMatch(key)))
        r'self': self?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^self\.'))) {
            previousValue.add(element.split(RegExp(r'^self\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^attachedTo\.').hasMatch(key)))
        r'attachedTo': attachedTo?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^attachedTo\.'))) {
            previousValue.add(element.split(RegExp(r'^attachedTo\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^resource\.').hasMatch(key)))
        r'resource': resource?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^resource\.'))) {
            previousValue.add(element.split(RegExp(r'^resource\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
