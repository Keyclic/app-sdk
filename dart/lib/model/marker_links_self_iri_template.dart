//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MarkerLinksSelfIriTemplate {
  /// Returns a new [MarkerLinksSelfIriTemplate] instance.
  MarkerLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [MarkerLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MarkerLinksSelfIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MarkerLinksSelfIriTemplate(
      mapping: MarkerLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  MarkerLinksSelfIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MarkerLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<MarkerLinksSelfIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <MarkerLinksSelfIriTemplate>[];
    }
    return json
        .map((value) {
          return MarkerLinksSelfIriTemplate.fromJson(value);
        })
        .whereType<MarkerLinksSelfIriTemplate>()
        .toList();
  }

  static Map<String, MarkerLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MarkerLinksSelfIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, MarkerLinksSelfIriTemplate?>(
            key, MarkerLinksSelfIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, MarkerLinksSelfIriTemplate>;
  }

  // maps a json object with a list of MarkerLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<MarkerLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<MarkerLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: MarkerLinksSelfIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'MarkerLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
