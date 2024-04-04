//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class InternalServiceLinks {
  /// Returns a new [InternalServiceLinks] instance.
  InternalServiceLinks({
    this.organization,
    this.self,
  });

  /// Returns a new [InternalServiceLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InternalServiceLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return InternalServiceLinks(
      organization:
          InternalServiceLinksOrganization.fromJson(json[r'organization']),
      self: InternalServiceLinksSelf.fromJson(json[r'self']),
    );
  }

  InternalServiceLinksOrganization? organization;

  InternalServiceLinksSelf? self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServiceLinks &&
        other.organization == organization &&
        other.self == self;
  }

  @override
  int get hashCode =>
      (organization == null ? 0 : organization.hashCode) +
      (self == null ? 0 : self.hashCode);

  static List<InternalServiceLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <InternalServiceLinks>[];
    }

    return json.fold(<InternalServiceLinks>[],
        (List<InternalServiceLinks> previousValue, element) {
      final InternalServiceLinks? object =
          InternalServiceLinks.fromJson(element);
      if (object is InternalServiceLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, InternalServiceLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, InternalServiceLinks>{};
    }

    return json.entries.fold(<String, InternalServiceLinks>{},
        (Map<String, InternalServiceLinks> previousValue, element) {
      final InternalServiceLinks? object =
          InternalServiceLinks.fromJson(element.value);
      if (object is InternalServiceLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of InternalServiceLinks-objects as value to a dart map
  static Map<String, List<InternalServiceLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<InternalServiceLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<InternalServiceLinks>>(
          key, InternalServiceLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'InternalServiceLinks[organization=$organization, self=$self]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^organization\.').hasMatch(key)))
        r'organization': organization?.toJson(keys?.fold<List<String>>(
            <String>[], (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^organization\.'))) {
            previousValue.add(element.split(RegExp(r'^organization\.')).last);
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
