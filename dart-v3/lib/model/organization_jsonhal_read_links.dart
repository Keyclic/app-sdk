//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class OrganizationJsonhalReadLinks {
  /// Returns a new [OrganizationJsonhalReadLinks] instance.
  OrganizationJsonhalReadLinks({
    required this.self,
    this.dispatcher,
  });

  /// Returns a new [OrganizationJsonhalReadLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationJsonhalReadLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return OrganizationJsonhalReadLinks(
      self: GetPlaceCollection200ResponseLinksSelf.fromJson(json[r'self'])!,
      dispatcher:
          GetPlaceCollection200ResponseLinksFirst.fromJson(json[r'dispatcher']),
    );
  }

  GetPlaceCollection200ResponseLinksSelf self;

  GetPlaceCollection200ResponseLinksFirst? dispatcher;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationJsonhalReadLinks &&
        other.self == self &&
        other.dispatcher == dispatcher;
  }

  @override
  int get hashCode =>
      self.hashCode + (dispatcher == null ? 0 : dispatcher.hashCode);

  static List<OrganizationJsonhalReadLinks> listFromJson(Iterable? json) {
    if (json == null) {
      return <OrganizationJsonhalReadLinks>[];
    }

    return json.fold(<OrganizationJsonhalReadLinks>[],
        (List<OrganizationJsonhalReadLinks> previousValue, element) {
      final OrganizationJsonhalReadLinks? object =
          OrganizationJsonhalReadLinks.fromJson(element);
      if (object is OrganizationJsonhalReadLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OrganizationJsonhalReadLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OrganizationJsonhalReadLinks>{};
    }

    return json.entries.fold(<String, OrganizationJsonhalReadLinks>{},
        (Map<String, OrganizationJsonhalReadLinks> previousValue, element) {
      final OrganizationJsonhalReadLinks? object =
          OrganizationJsonhalReadLinks.fromJson(element.value);
      if (object is OrganizationJsonhalReadLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OrganizationJsonhalReadLinks-objects as value to a dart map
  static Map<String, List<OrganizationJsonhalReadLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OrganizationJsonhalReadLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OrganizationJsonhalReadLinks>>(
          key, OrganizationJsonhalReadLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OrganizationJsonhalReadLinks[self=$self, dispatcher=$dispatcher]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'self': self.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^self\.'))) {
          previousValue.add(element.split(RegExp(r'^self\.')).last);
        }

        return previousValue;
      })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^dispatcher\.').hasMatch(key)))
        r'dispatcher': dispatcher?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^dispatcher\.'))) {
            previousValue.add(element.split(RegExp(r'^dispatcher\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
