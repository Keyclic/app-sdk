//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ApplicationLinks {
  /// Returns a new [ApplicationLinks] instance.
  ApplicationLinks({
    this.knowledgeBase,
    this.self,
  });

  /// Returns a new [ApplicationLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ApplicationLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ApplicationLinks(
      knowledgeBase:
          ApplicationLinksKnowledgeBase.fromJson(json[r'knowledgeBase']),
      self: ApplicationLinksSelf.fromJson(json[r'self']),
    );
  }

  ApplicationLinksKnowledgeBase? knowledgeBase;

  ApplicationLinksSelf? self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ApplicationLinks &&
        other.knowledgeBase == knowledgeBase &&
        other.self == self;
  }

  @override
  int get hashCode =>
      (knowledgeBase == null ? 0 : knowledgeBase.hashCode) +
      (self == null ? 0 : self.hashCode);

  static List<ApplicationLinks> listFromJson(Iterable? json) {
    if (json == null) {
      return <ApplicationLinks>[];
    }

    return json.fold(<ApplicationLinks>[],
        (List<ApplicationLinks> previousValue, element) {
      final ApplicationLinks? object = ApplicationLinks.fromJson(element);
      if (object is ApplicationLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ApplicationLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ApplicationLinks>{};
    }

    return json.entries.fold(<String, ApplicationLinks>{},
        (Map<String, ApplicationLinks> previousValue, element) {
      final ApplicationLinks? object = ApplicationLinks.fromJson(element.value);
      if (object is ApplicationLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ApplicationLinks-objects as value to a dart map
  static Map<String, List<ApplicationLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ApplicationLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ApplicationLinks>>(
          key, ApplicationLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ApplicationLinks[knowledgeBase=$knowledgeBase, self=$self]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^knowledgeBase\.').hasMatch(key)))
        r'knowledgeBase': knowledgeBase?.toJson(keys?.fold<List<String>>(
            <String>[], (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^knowledgeBase\.'))) {
            previousValue.add(element.split(RegExp(r'^knowledgeBase\.')).last);
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
