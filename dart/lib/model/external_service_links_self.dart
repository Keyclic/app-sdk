//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ExternalServiceLinksSelf {
  /// Returns a new [ExternalServiceLinksSelf] instance.
  ExternalServiceLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ExternalServiceLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ExternalServiceLinksSelf.fromJson(Map<String, dynamic> json) {
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
  String href;

  ExternalServiceLinksSelfIriTemplate iriTemplate;

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

  static List<ExternalServiceLinksSelf> listFromJson(List<dynamic> json) {
    return <ExternalServiceLinksSelf>[
      if (json is List)
        for (dynamic value in json) ExternalServiceLinksSelf.fromJson(value),
    ];
  }

  static Map<String, ExternalServiceLinksSelf> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ExternalServiceLinksSelf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ExternalServiceLinksSelf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ExternalServiceLinksSelf-objects as value to a dart map
  static Map<String, List<ExternalServiceLinksSelf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ExternalServiceLinksSelf>>{
      if (json is Map)
        for (final entry in json.entries)
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
