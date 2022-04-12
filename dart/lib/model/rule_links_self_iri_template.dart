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
  static RuleLinksSelfIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
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

  static List<RuleLinksSelfIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <RuleLinksSelfIriTemplate>[];
    }
    return json
        .map((value) {
          return RuleLinksSelfIriTemplate.fromJson(value);
        })
        .whereType<RuleLinksSelfIriTemplate>()
        .toList();
  }

  static Map<String, RuleLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RuleLinksSelfIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, RuleLinksSelfIriTemplate?>(
            key, RuleLinksSelfIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, RuleLinksSelfIriTemplate>;
  }

  // maps a json object with a list of RuleLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<RuleLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<RuleLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: RuleLinksSelfIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'RuleLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
