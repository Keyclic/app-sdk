//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PublicationJsonhalReadLinks {
  /// Returns a new [PublicationJsonhalReadLinks] instance.
  PublicationJsonhalReadLinks({
    this.self,
    this.organization,
  });

  /// Returns a new [PublicationJsonhalReadLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PublicationJsonhalReadLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PublicationJsonhalReadLinks(
      self: GetPlaceCollection200ResponseLinksSelf.fromJson(json[r'self']),
      organization: GetPlaceCollection200ResponseLinksSelf.fromJson(
          json[r'organization']),
    );
  }

  GetPlaceCollection200ResponseLinksSelf? self;

  GetPlaceCollection200ResponseLinksSelf? organization;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationJsonhalReadLinks &&
        other.self == self &&
        other.organization == organization;
  }

  @override
  int get hashCode =>
      (self == null ? 0 : self.hashCode) +
      (organization == null ? 0 : organization.hashCode);

  static List<PublicationJsonhalReadLinks> listFromJson(Iterable? json) {
    if (json == null) {
      return <PublicationJsonhalReadLinks>[];
    }

    return json.fold(<PublicationJsonhalReadLinks>[],
        (List<PublicationJsonhalReadLinks> previousValue, element) {
      final PublicationJsonhalReadLinks? object =
          PublicationJsonhalReadLinks.fromJson(element);
      if (object is PublicationJsonhalReadLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PublicationJsonhalReadLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PublicationJsonhalReadLinks>{};
    }

    return json.entries.fold(<String, PublicationJsonhalReadLinks>{},
        (Map<String, PublicationJsonhalReadLinks> previousValue, element) {
      final PublicationJsonhalReadLinks? object =
          PublicationJsonhalReadLinks.fromJson(element.value);
      if (object is PublicationJsonhalReadLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PublicationJsonhalReadLinks-objects as value to a dart map
  static Map<String, List<PublicationJsonhalReadLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PublicationJsonhalReadLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PublicationJsonhalReadLinks>>(
          key, PublicationJsonhalReadLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PublicationJsonhalReadLinks[self=$self, organization=$organization]';

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
          keys.any((key) => RegExp(r'^organization\.').hasMatch(key)))
        r'organization': organization?.toJson(keys?.fold<List<String>>(
            <String>[], (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^organization\.'))) {
            previousValue.add(element.split(RegExp(r'^organization\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
