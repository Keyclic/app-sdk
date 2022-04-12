//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlaceLinksSelf {
  /// Returns a new [PlaceLinksSelf] instance.
  PlaceLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [PlaceLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceLinksSelf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlaceLinksSelf(
      href: json[r'href'],
      iriTemplate: PlaceLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given place.
  String? href;

  PlaceLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<PlaceLinksSelf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PlaceLinksSelf>[];
    }
    return json
        .map((value) {
          return PlaceLinksSelf.fromJson(value);
        })
        .whereType<PlaceLinksSelf>()
        .toList();
  }

  static Map<String, PlaceLinksSelf> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceLinksSelf>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, PlaceLinksSelf?>(key, PlaceLinksSelf.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PlaceLinksSelf>;
  }

  // maps a json object with a list of PlaceLinksSelf-objects as value to a dart map
  static Map<String, List<PlaceLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PlaceLinksSelf>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: PlaceLinksSelf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PlaceLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
