//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MarkerLinksPlanIriTemplateMapping {
  /// Returns a new [MarkerLinksPlanIriTemplateMapping] instance.
  MarkerLinksPlanIriTemplateMapping({
    this.plan,
  });

  /// Returns a new [MarkerLinksPlanIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MarkerLinksPlanIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MarkerLinksPlanIriTemplateMapping(
      plan: json[r'plan'],
    );
  }

  String? plan;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MarkerLinksPlanIriTemplateMapping && other.plan == plan;
  }

  @override
  int get hashCode => (plan == null ? 0 : plan.hashCode);

  static List<MarkerLinksPlanIriTemplateMapping> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <MarkerLinksPlanIriTemplateMapping>[];
    }
    return json
        .map((value) {
          return MarkerLinksPlanIriTemplateMapping.fromJson(value);
        })
        .whereType<MarkerLinksPlanIriTemplateMapping>()
        .toList();
  }

  static Map<String, MarkerLinksPlanIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MarkerLinksPlanIriTemplateMapping>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, MarkerLinksPlanIriTemplateMapping?>(
            key, MarkerLinksPlanIriTemplateMapping.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, MarkerLinksPlanIriTemplateMapping>;
  }

  // maps a json object with a list of MarkerLinksPlanIriTemplateMapping-objects as value to a dart map
  static Map<String, List<MarkerLinksPlanIriTemplateMapping>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<MarkerLinksPlanIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              MarkerLinksPlanIriTemplateMapping.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'MarkerLinksPlanIriTemplateMapping[plan=$plan]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (plan != null) r'plan': plan,
    };
  }
}
