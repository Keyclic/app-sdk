//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class RuleLinksPlaceIriTemplate {
  /// Returns a new [RuleLinksPlaceIriTemplate] instance.
  RuleLinksPlaceIriTemplate({
    this.mapping,
  });

  /// Returns a new [RuleLinksPlaceIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RuleLinksPlaceIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return RuleLinksPlaceIriTemplate(
      mapping: BookmarkLinksPlaceIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  BookmarkLinksPlaceIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RuleLinksPlaceIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<RuleLinksPlaceIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <RuleLinksPlaceIriTemplate>[];
    }

    return json.fold(<RuleLinksPlaceIriTemplate>[],
        (List<RuleLinksPlaceIriTemplate> previousValue, element) {
      final RuleLinksPlaceIriTemplate? object =
          RuleLinksPlaceIriTemplate.fromJson(element);
      if (object is RuleLinksPlaceIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, RuleLinksPlaceIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RuleLinksPlaceIriTemplate>{};
    }

    return json.entries.fold(<String, RuleLinksPlaceIriTemplate>{},
        (Map<String, RuleLinksPlaceIriTemplate> previousValue, element) {
      final RuleLinksPlaceIriTemplate? object =
          RuleLinksPlaceIriTemplate.fromJson(element.value);
      if (object is RuleLinksPlaceIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of RuleLinksPlaceIriTemplate-objects as value to a dart map
  static Map<String, List<RuleLinksPlaceIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<RuleLinksPlaceIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<RuleLinksPlaceIriTemplate>>(
          key, RuleLinksPlaceIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'RuleLinksPlaceIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^mapping\.').hasMatch(key)))
        r'mapping': mapping?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^mapping\.'))) {
            previousValue.add(element.split(RegExp(r'^mapping\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
