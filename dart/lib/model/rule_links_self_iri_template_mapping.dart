//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class RuleLinksSelfIriTemplateMapping {
  /// Returns a new [RuleLinksSelfIriTemplateMapping] instance.
  RuleLinksSelfIriTemplateMapping({
    this.rule,
  });

  /// Returns a new [RuleLinksSelfIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RuleLinksSelfIriTemplateMapping? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return RuleLinksSelfIriTemplateMapping(
      rule: json[r'rule'],
    );
  }

  String? rule;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RuleLinksSelfIriTemplateMapping && other.rule == rule;
  }

  @override
  int get hashCode => (rule == null ? 0 : rule.hashCode);

  static List<RuleLinksSelfIriTemplateMapping> listFromJson(Iterable? json) {
    if (json == null) {
      return <RuleLinksSelfIriTemplateMapping>[];
    }

    return json.fold(<RuleLinksSelfIriTemplateMapping>[],
        (List<RuleLinksSelfIriTemplateMapping> previousValue, element) {
      final RuleLinksSelfIriTemplateMapping? object =
          RuleLinksSelfIriTemplateMapping.fromJson(element);
      if (object is RuleLinksSelfIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, RuleLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RuleLinksSelfIriTemplateMapping>{};
    }

    return json.entries.fold(<String, RuleLinksSelfIriTemplateMapping>{},
        (Map<String, RuleLinksSelfIriTemplateMapping> previousValue, element) {
      final RuleLinksSelfIriTemplateMapping? object =
          RuleLinksSelfIriTemplateMapping.fromJson(element.value);
      if (object is RuleLinksSelfIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of RuleLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<RuleLinksSelfIriTemplateMapping>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<RuleLinksSelfIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<RuleLinksSelfIriTemplateMapping>>(
          key, RuleLinksSelfIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() => 'RuleLinksSelfIriTemplateMapping[rule=$rule]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'rule')) r'rule': rule,
    };
  }
}
