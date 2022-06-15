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
  static RuleLinksSelfIriTemplateMapping? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
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

  static List<RuleLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <RuleLinksSelfIriTemplateMapping>[];
    }
    return json
        .map((value) {
          return RuleLinksSelfIriTemplateMapping.fromJson(value);
        })
        .whereType<RuleLinksSelfIriTemplateMapping>()
        .toList();
  }

  static Map<String, RuleLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RuleLinksSelfIriTemplateMapping>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, RuleLinksSelfIriTemplateMapping?>(
            key, RuleLinksSelfIriTemplateMapping.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, RuleLinksSelfIriTemplateMapping>;
  }

  // maps a json object with a list of RuleLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<RuleLinksSelfIriTemplateMapping>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<RuleLinksSelfIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: RuleLinksSelfIriTemplateMapping.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'RuleLinksSelfIriTemplateMapping[rule=$rule]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (rule != null) r'rule': rule,
    };
  }
}
