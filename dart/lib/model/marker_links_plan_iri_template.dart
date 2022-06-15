//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MarkerLinksPlanIriTemplate {
  /// Returns a new [MarkerLinksPlanIriTemplate] instance.
  MarkerLinksPlanIriTemplate({
    this.mapping,
  });

  /// Returns a new [MarkerLinksPlanIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MarkerLinksPlanIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MarkerLinksPlanIriTemplate(
      mapping: MarkerLinksPlanIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  MarkerLinksPlanIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MarkerLinksPlanIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<MarkerLinksPlanIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <MarkerLinksPlanIriTemplate>[];
    }
    return json
        .map((value) {
          return MarkerLinksPlanIriTemplate.fromJson(value);
        })
        .whereType<MarkerLinksPlanIriTemplate>()
        .toList();
  }

  static Map<String, MarkerLinksPlanIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MarkerLinksPlanIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, MarkerLinksPlanIriTemplate?>(
            key, MarkerLinksPlanIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, MarkerLinksPlanIriTemplate>;
  }

  // maps a json object with a list of MarkerLinksPlanIriTemplate-objects as value to a dart map
  static Map<String, List<MarkerLinksPlanIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<MarkerLinksPlanIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: MarkerLinksPlanIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'MarkerLinksPlanIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
