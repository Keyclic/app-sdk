//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class RuleLinksSelfIriTemplate {
  /// Returns a new [RuleLinksSelfIriTemplate] instance.
  RuleLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [RuleLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RuleLinksSelfIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return RuleLinksSelfIriTemplate(
      mapping: RuleLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  RuleLinksSelfIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RuleLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<RuleLinksSelfIriTemplate> listFromJson(Iterable? json) {
    if (json == null) {
      return <RuleLinksSelfIriTemplate>[];
    }

    return json.fold(<RuleLinksSelfIriTemplate>[],
        (List<RuleLinksSelfIriTemplate> previousValue, element) {
      final RuleLinksSelfIriTemplate? object =
          RuleLinksSelfIriTemplate.fromJson(element);
      if (object is RuleLinksSelfIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, RuleLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RuleLinksSelfIriTemplate>{};
    }

    return json.entries.fold(<String, RuleLinksSelfIriTemplate>{},
        (Map<String, RuleLinksSelfIriTemplate> previousValue, element) {
      final RuleLinksSelfIriTemplate? object =
          RuleLinksSelfIriTemplate.fromJson(element.value);
      if (object is RuleLinksSelfIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of RuleLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<RuleLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<RuleLinksSelfIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<RuleLinksSelfIriTemplate>>(
          key, RuleLinksSelfIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'RuleLinksSelfIriTemplate[mapping=$mapping]';

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
