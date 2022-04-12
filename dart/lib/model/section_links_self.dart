//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class SectionLinksSelf {
  /// Returns a new [SectionLinksSelf] instance.
  SectionLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [SectionLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory SectionLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return SectionLinksSelf(
      href: json[r'href'],
      iriTemplate: SectionLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given section.
  String href;

  SectionLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SectionLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<SectionLinksSelf> listFromJson(List<dynamic> json) {
    return <SectionLinksSelf>[
      if (json is List)
        for (dynamic value in json) SectionLinksSelf.fromJson(value),
    ];
  }

  static Map<String, SectionLinksSelf> mapFromJson(Map<String, dynamic> json) {
    return <String, SectionLinksSelf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: SectionLinksSelf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of SectionLinksSelf-objects as value to a dart map
  static Map<String, List<SectionLinksSelf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<SectionLinksSelf>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: SectionLinksSelf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'SectionLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
