//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MarkerLinksSelf {
  /// Returns a new [MarkerLinksSelf] instance.
  MarkerLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [MarkerLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MarkerLinksSelf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MarkerLinksSelf(
      href: json[r'href'],
      iriTemplate: MarkerLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given marker.
  String? href;

  MarkerLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MarkerLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<MarkerLinksSelf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <MarkerLinksSelf>[];
    }
    return json
        .map((value) {
          return MarkerLinksSelf.fromJson(value);
        })
        .whereType<MarkerLinksSelf>()
        .toList();
  }

  static Map<String, MarkerLinksSelf> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MarkerLinksSelf>{};
    }

    final map = json.map((key, value) => MapEntry<String, MarkerLinksSelf?>(
        key, MarkerLinksSelf.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, MarkerLinksSelf>;
  }

  // maps a json object with a list of MarkerLinksSelf-objects as value to a dart map
  static Map<String, List<MarkerLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<MarkerLinksSelf>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: MarkerLinksSelf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'MarkerLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
