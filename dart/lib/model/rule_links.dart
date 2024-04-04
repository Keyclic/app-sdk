//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class RuleLinks {
  /// Returns a new [RuleLinks] instance.
  RuleLinks({
    this.category,
    this.place,
    this.self,
    this.service,
  });

  /// Returns a new [RuleLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RuleLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return RuleLinks(
      category: RuleLinksCategory.fromJson(json[r'category']),
      place: RuleLinksPlace.fromJson(json[r'place']),
      self: RuleLinksSelf.fromJson(json[r'self']),
      service: RuleLinksService.fromJson(json[r'service']),
    );
  }

  RuleLinksCategory? category;

  RuleLinksPlace? place;

  RuleLinksSelf? self;

  RuleLinksService? service;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RuleLinks &&
        other.category == category &&
        other.place == place &&
        other.self == self &&
        other.service == service;
  }

  @override
  int get hashCode =>
      (category == null ? 0 : category.hashCode) +
      (place == null ? 0 : place.hashCode) +
      (self == null ? 0 : self.hashCode) +
      (service == null ? 0 : service.hashCode);

  static List<RuleLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <RuleLinks>[];
    }

    return json.fold(<RuleLinks>[], (List<RuleLinks> previousValue, element) {
      final RuleLinks? object = RuleLinks.fromJson(element);
      if (object is RuleLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, RuleLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RuleLinks>{};
    }

    return json.entries.fold(<String, RuleLinks>{},
        (Map<String, RuleLinks> previousValue, element) {
      final RuleLinks? object = RuleLinks.fromJson(element.value);
      if (object is RuleLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of RuleLinks-objects as value to a dart map
  static Map<String, List<RuleLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<RuleLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<RuleLinks>>(
          key, RuleLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'RuleLinks[category=$category, place=$place, self=$self, service=$service]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^category\.').hasMatch(key)))
        r'category': category?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^category\.'))) {
            previousValue.add(element.split(RegExp(r'^category\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^place\.').hasMatch(key)))
        r'place': place?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^place\.'))) {
            previousValue.add(element.split(RegExp(r'^place\.')).last);
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
      if (keys == null ||
          keys.any((key) => RegExp(r'^service\.').hasMatch(key)))
        r'service': service?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^service\.'))) {
            previousValue.add(element.split(RegExp(r'^service\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
