//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OperationLinksOrganization {
  /// Returns a new [OperationLinksOrganization] instance.
  OperationLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OperationLinksOrganization] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OperationLinksOrganization.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksOrganization(
      href: json[r'href'],
      iriTemplate:
          OperationLinksOrganizationIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the organization associated to the given operation.
  String href;

  OperationLinksOrganizationIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksOrganization &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<OperationLinksOrganization> listFromJson(List<dynamic> json) {
    return <OperationLinksOrganization>[
      if (json is List)
        for (dynamic value in json) OperationLinksOrganization.fromJson(value),
    ];
  }

  static Map<String, OperationLinksOrganization> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OperationLinksOrganization>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OperationLinksOrganization.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OperationLinksOrganization-objects as value to a dart map
  static Map<String, List<OperationLinksOrganization>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OperationLinksOrganization>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OperationLinksOrganization.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'OperationLinksOrganization[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
