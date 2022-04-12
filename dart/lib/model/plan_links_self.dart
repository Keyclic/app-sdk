//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlanLinksSelf {
  /// Returns a new [PlanLinksSelf] instance.
  PlanLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [PlanLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlanLinksSelf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlanLinksSelf(
      href: json[r'href'],
      iriTemplate: PlanLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given plan.
  String? href;

  PlanLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlanLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<PlanLinksSelf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PlanLinksSelf>[];
    }
    return json
        .map((value) {
          return PlanLinksSelf.fromJson(value);
        })
        .whereType<PlanLinksSelf>()
        .toList();
  }

  static Map<String, PlanLinksSelf> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlanLinksSelf>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, PlanLinksSelf?>(key, PlanLinksSelf.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PlanLinksSelf>;
  }

  // maps a json object with a list of PlanLinksSelf-objects as value to a dart map
  static Map<String, List<PlanLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PlanLinksSelf>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: PlanLinksSelf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PlanLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
