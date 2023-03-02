//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class MarkerLinksPlan {
  /// Returns a new [MarkerLinksPlan] instance.
  MarkerLinksPlan({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [MarkerLinksPlan] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory MarkerLinksPlan.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MarkerLinksPlan(
      href: json[r'href'],
      iriTemplate: MarkerLinksPlanIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the plan associated to the given marker.
  String href;

  MarkerLinksPlanIriTemplate iriTemplate;

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

  static List<MarkerLinksPlan> listFromJson(List<dynamic> json) {
    return <MarkerLinksPlan>[
      if (json is List)
        for (dynamic value in json) MarkerLinksPlan.fromJson(value),
    ];
  }

  static Map<String, MarkerLinksPlan> mapFromJson(Map<String, dynamic> json) {
    return <String, MarkerLinksPlan>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: MarkerLinksPlan.fromJson(entry.value),
    };
  }

  // maps a json object with a list of MarkerLinksPlan-objects as value to a dart map
  static Map<String, List<MarkerLinksPlan>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<MarkerLinksPlan>>{
      if (json is Map)
        for (final entry in json.entries)
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
