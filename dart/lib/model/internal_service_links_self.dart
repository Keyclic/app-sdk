//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class InternalServiceLinksSelf {
  /// Returns a new [InternalServiceLinksSelf] instance.
  InternalServiceLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [InternalServiceLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory InternalServiceLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InternalServiceLinksSelf(
      href: json[r'href'],
      iriTemplate:
          InternalServiceLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given internalservice.
  String href;

  InternalServiceLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServiceLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<InternalServiceLinksSelf> listFromJson(List<dynamic> json) {
    return <InternalServiceLinksSelf>[
      if (json is List)
        for (dynamic value in json) InternalServiceLinksSelf.fromJson(value),
    ];
  }

  static Map<String, InternalServiceLinksSelf> mapFromJson(
      Map<String, dynamic> json) {
    return <String, InternalServiceLinksSelf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: InternalServiceLinksSelf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of InternalServiceLinksSelf-objects as value to a dart map
  static Map<String, List<InternalServiceLinksSelf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<InternalServiceLinksSelf>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: InternalServiceLinksSelf.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'InternalServiceLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
