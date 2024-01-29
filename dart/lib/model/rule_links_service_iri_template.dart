//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class RuleLinksServiceIriTemplate {
  /// Returns a new [RuleLinksServiceIriTemplate] instance.
  RuleLinksServiceIriTemplate({
    this.mapping,
  });

  /// Returns a new [RuleLinksServiceIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RuleLinksServiceIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RuleLinksServiceIriTemplate(
      mapping:
          AssignmentLinksServiceIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  AssignmentLinksServiceIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RuleLinksServiceIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<RuleLinksServiceIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <RuleLinksServiceIriTemplate>[];
    }

    return json.fold(<RuleLinksServiceIriTemplate>[],
        (List<RuleLinksServiceIriTemplate> previousValue, element) {
      final RuleLinksServiceIriTemplate? object =
          RuleLinksServiceIriTemplate.fromJson(element);
      if (object is RuleLinksServiceIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, RuleLinksServiceIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RuleLinksServiceIriTemplate>{};
    }

    return json.entries.fold(<String, RuleLinksServiceIriTemplate>{},
        (Map<String, RuleLinksServiceIriTemplate> previousValue, element) {
      final RuleLinksServiceIriTemplate? object =
          RuleLinksServiceIriTemplate.fromJson(element.value);
      if (object is RuleLinksServiceIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of RuleLinksServiceIriTemplate-objects as value to a dart map
  static Map<String, List<RuleLinksServiceIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<RuleLinksServiceIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<RuleLinksServiceIriTemplate>>(
          key, RuleLinksServiceIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'RuleLinksServiceIriTemplate[mapping=$mapping]';

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
