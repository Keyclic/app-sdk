//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class RuleLinksSelf {
  /// Returns a new [RuleLinksSelf] instance.
  RuleLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [RuleLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory RuleLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return RuleLinksSelf(
      href: json[r'href'],
      iriTemplate: RuleLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given rule.
  String href;

  RuleLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RuleLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<RuleLinksSelf> listFromJson(List<dynamic> json) {
    return <RuleLinksSelf>[
      if (json is List)
        for (dynamic value in json) RuleLinksSelf.fromJson(value),
    ];
  }

  static Map<String, RuleLinksSelf> mapFromJson(Map<String, dynamic> json) {
    return <String, RuleLinksSelf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: RuleLinksSelf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of RuleLinksSelf-objects as value to a dart map
  static Map<String, List<RuleLinksSelf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<RuleLinksSelf>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: RuleLinksSelf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'RuleLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
