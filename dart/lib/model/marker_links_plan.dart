//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MarkerLinksPlan {
  /// Returns a new [MarkerLinksPlan] instance.
  MarkerLinksPlan({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [MarkerLinksPlan] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MarkerLinksPlan? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MarkerLinksPlan(
      href: json[r'href'],
      iriTemplate: MarkerLinksPlanIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the plan associated to the given marker.
  String? href;

  MarkerLinksPlanIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MarkerLinksPlan &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<MarkerLinksPlan> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <MarkerLinksPlan>[];
    }
    return json
        .map((value) {
          return MarkerLinksPlan.fromJson(value);
        })
        .whereType<MarkerLinksPlan>()
        .toList();
  }

  static Map<String, MarkerLinksPlan> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MarkerLinksPlan>{};
    }

    final map = json.map((key, value) => MapEntry<String, MarkerLinksPlan?>(
        key, MarkerLinksPlan.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, MarkerLinksPlan>;
  }

  // maps a json object with a list of MarkerLinksPlan-objects as value to a dart map
  static Map<String, List<MarkerLinksPlan>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<MarkerLinksPlan>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: MarkerLinksPlan.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'MarkerLinksPlan[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
