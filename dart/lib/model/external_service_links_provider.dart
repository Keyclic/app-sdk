//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ExternalServiceLinksProvider {
  /// Returns a new [ExternalServiceLinksProvider] instance.
  ExternalServiceLinksProvider({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ExternalServiceLinksProvider] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ExternalServiceLinksProvider? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ExternalServiceLinksProvider(
      href: json[r'href'],
      iriTemplate: ExternalServiceLinksProviderIriTemplate.fromJson(
          json[r'iriTemplate']),
    );
  }

  /// The URI of the provider associated to the given externalservice.
  String? href;

  ExternalServiceLinksProviderIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalServiceLinksProvider &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ExternalServiceLinksProvider> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ExternalServiceLinksProvider>[];
    }
    return json
        .map((value) {
          return ExternalServiceLinksProvider.fromJson(value);
        })
        .whereType<ExternalServiceLinksProvider>()
        .toList();
  }

  static Map<String, ExternalServiceLinksProvider> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ExternalServiceLinksProvider>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ExternalServiceLinksProvider?>(
            key, ExternalServiceLinksProvider.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ExternalServiceLinksProvider>;
  }

  // maps a json object with a list of ExternalServiceLinksProvider-objects as value to a dart map
  static Map<String, List<ExternalServiceLinksProvider>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ExternalServiceLinksProvider>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ExternalServiceLinksProvider.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ExternalServiceLinksProvider[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
