//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ProcedureLinksSelf {
  /// Returns a new [ProcedureLinksSelf] instance.
  ProcedureLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ProcedureLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ProcedureLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ProcedureLinksSelf(
      href: json[r'href'],
      iriTemplate: ProcedureLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given procedure.
  String href;

  ProcedureLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ProcedureLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ProcedureLinksSelf> listFromJson(List<dynamic> json) {
    return <ProcedureLinksSelf>[
      if (json is List)
        for (dynamic value in json) ProcedureLinksSelf.fromJson(value),
    ];
  }

  static Map<String, ProcedureLinksSelf> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ProcedureLinksSelf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ProcedureLinksSelf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ProcedureLinksSelf-objects as value to a dart map
  static Map<String, List<ProcedureLinksSelf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ProcedureLinksSelf>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ProcedureLinksSelf.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ProcedureLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
