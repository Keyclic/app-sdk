//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OrganizationLinksDispatcherIriTemplateMapping {
  /// Returns a new [OrganizationLinksDispatcherIriTemplateMapping] instance.
  OrganizationLinksDispatcherIriTemplateMapping({
    this.dispatcher,
  });

  /// Returns a new [OrganizationLinksDispatcherIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OrganizationLinksDispatcherIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationLinksDispatcherIriTemplateMapping(
      dispatcher: json[r'dispatcher'],
    );
  }

  String dispatcher;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksDispatcherIriTemplateMapping &&
        other.dispatcher == dispatcher;
  }

  @override
  int get hashCode => (dispatcher == null ? 0 : dispatcher.hashCode);

  static List<OrganizationLinksDispatcherIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return <OrganizationLinksDispatcherIriTemplateMapping>[
      if (json is List)
        for (dynamic value in json)
          OrganizationLinksDispatcherIriTemplateMapping.fromJson(value),
    ];
  }

  static Map<String, OrganizationLinksDispatcherIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OrganizationLinksDispatcherIriTemplateMapping>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OrganizationLinksDispatcherIriTemplateMapping.fromJson(
              entry.value),
    };
  }

  // maps a json object with a list of OrganizationLinksDispatcherIriTemplateMapping-objects as value to a dart map
  static Map<String, List<OrganizationLinksDispatcherIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic> json) {
    return <String, List<OrganizationLinksDispatcherIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OrganizationLinksDispatcherIriTemplateMapping.listFromJson(
              entry.value),
    };
  }

  @override
  String toString() =>
      'OrganizationLinksDispatcherIriTemplateMapping[dispatcher=$dispatcher]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (dispatcher != null) r'dispatcher': dispatcher,
    };
  }
}
