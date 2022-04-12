//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ExternalServiceLinksSelf {
  /// Returns a new [ExternalServiceLinksSelf] instance.
  ExternalServiceLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ExternalServiceLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ExternalServiceLinksSelf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ExternalServiceLinksSelf(
      href: json[r'href'],
      iriTemplate:
          ExternalServiceLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given externalservice.
  String? href;

  ExternalServiceLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalServiceLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ExternalServiceLinksSelf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ExternalServiceLinksSelf>[];
    }
    return json
        .map((value) {
          return ExternalServiceLinksSelf.fromJson(value);
        })
        .whereType<ExternalServiceLinksSelf>()
        .toList();
  }

  static Map<String, ExternalServiceLinksSelf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ExternalServiceLinksSelf>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ExternalServiceLinksSelf?>(
            key, ExternalServiceLinksSelf.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ExternalServiceLinksSelf>;
  }

  // maps a json object with a list of ExternalServiceLinksSelf-objects as value to a dart map
  static Map<String, List<ExternalServiceLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ExternalServiceLinksSelf>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ExternalServiceLinksSelf.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ExternalServiceLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
