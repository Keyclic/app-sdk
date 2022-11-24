//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ApplicationLinksSelf {
  /// Returns a new [ApplicationLinksSelf] instance.
  ApplicationLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ApplicationLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ApplicationLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ApplicationLinksSelf(
      href: json[r'href'],
      iriTemplate:
          ApplicationLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given application.
  String href;

  ApplicationLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ApplicationLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ApplicationLinksSelf> listFromJson(List<dynamic> json) {
    return <ApplicationLinksSelf>[
      if (json is List)
        for (dynamic value in json) ApplicationLinksSelf.fromJson(value),
    ];
  }

  static Map<String, ApplicationLinksSelf> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ApplicationLinksSelf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ApplicationLinksSelf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ApplicationLinksSelf-objects as value to a dart map
  static Map<String, List<ApplicationLinksSelf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ApplicationLinksSelf>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ApplicationLinksSelf.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ApplicationLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
