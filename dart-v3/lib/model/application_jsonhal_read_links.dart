//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ApplicationJsonhalReadLinks {
  /// Returns a new [ApplicationJsonhalReadLinks] instance.
  ApplicationJsonhalReadLinks({
    this.self,
    this.knowledgeBase,
  });

  /// Returns a new [ApplicationJsonhalReadLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ApplicationJsonhalReadLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ApplicationJsonhalReadLinks(
      self: GetPlaceCollection200ResponseLinksSelf.fromJson(json[r'self']),
      knowledgeBase: GetPlaceCollection200ResponseLinksFirst.fromJson(
          json[r'knowledgeBase']),
    );
  }

  GetPlaceCollection200ResponseLinksSelf? self;

  GetPlaceCollection200ResponseLinksFirst? knowledgeBase;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ApplicationJsonhalReadLinks &&
        other.self == self &&
        other.knowledgeBase == knowledgeBase;
  }

  @override
  int get hashCode =>
      (self == null ? 0 : self.hashCode) +
      (knowledgeBase == null ? 0 : knowledgeBase.hashCode);

  static List<ApplicationJsonhalReadLinks> listFromJson(Iterable? json) {
    if (json == null) {
      return <ApplicationJsonhalReadLinks>[];
    }

    return json.fold(<ApplicationJsonhalReadLinks>[],
        (List<ApplicationJsonhalReadLinks> previousValue, element) {
      final ApplicationJsonhalReadLinks? object =
          ApplicationJsonhalReadLinks.fromJson(element);
      if (object is ApplicationJsonhalReadLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ApplicationJsonhalReadLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ApplicationJsonhalReadLinks>{};
    }

    return json.entries.fold(<String, ApplicationJsonhalReadLinks>{},
        (Map<String, ApplicationJsonhalReadLinks> previousValue, element) {
      final ApplicationJsonhalReadLinks? object =
          ApplicationJsonhalReadLinks.fromJson(element.value);
      if (object is ApplicationJsonhalReadLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ApplicationJsonhalReadLinks-objects as value to a dart map
  static Map<String, List<ApplicationJsonhalReadLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ApplicationJsonhalReadLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ApplicationJsonhalReadLinks>>(
          key, ApplicationJsonhalReadLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ApplicationJsonhalReadLinks[self=$self, knowledgeBase=$knowledgeBase]';

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
          keys.any((key) => RegExp(r'^knowledgeBase\.').hasMatch(key)))
        r'knowledgeBase': knowledgeBase?.toJson(keys?.fold<List<String>>(
            <String>[], (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^knowledgeBase\.'))) {
            previousValue.add(element.split(RegExp(r'^knowledgeBase\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
