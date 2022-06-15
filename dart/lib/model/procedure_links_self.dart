//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ProcedureLinksSelf {
  /// Returns a new [ProcedureLinksSelf] instance.
  ProcedureLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ProcedureLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ProcedureLinksSelf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ProcedureLinksSelf(
      href: json[r'href'],
      iriTemplate: ProcedureLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given procedure.
  String? href;

  ProcedureLinksSelfIriTemplate? iriTemplate;

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

  static List<ProcedureLinksSelf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ProcedureLinksSelf>[];
    }
    return json
        .map((value) {
          return ProcedureLinksSelf.fromJson(value);
        })
        .whereType<ProcedureLinksSelf>()
        .toList();
  }

  static Map<String, ProcedureLinksSelf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ProcedureLinksSelf>{};
    }

    final map = json.map((key, value) => MapEntry<String, ProcedureLinksSelf?>(
        key, ProcedureLinksSelf.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ProcedureLinksSelf>;
  }

  // maps a json object with a list of ProcedureLinksSelf-objects as value to a dart map
  static Map<String, List<ProcedureLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ProcedureLinksSelf>>{
      if (json is Map)
        for (final entry in json!.entries)
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
