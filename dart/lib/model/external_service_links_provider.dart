//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ExternalServiceLinksProvider {
  /// Returns a new [ExternalServiceLinksProvider] instance.
  ExternalServiceLinksProvider({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ExternalServiceLinksProvider] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ExternalServiceLinksProvider.fromJson(Map<String, dynamic> json) {
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
  String href;

  ExternalServiceLinksProviderIriTemplate iriTemplate;

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

  static List<ExternalServiceLinksProvider> listFromJson(List<dynamic> json) {
    return <ExternalServiceLinksProvider>[
      if (json is List)
        for (dynamic value in json)
          ExternalServiceLinksProvider.fromJson(value),
    ];
  }

  static Map<String, ExternalServiceLinksProvider> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ExternalServiceLinksProvider>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ExternalServiceLinksProvider.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ExternalServiceLinksProvider-objects as value to a dart map
  static Map<String, List<ExternalServiceLinksProvider>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ExternalServiceLinksProvider>>{
      if (json is Map)
        for (final entry in json.entries)
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
