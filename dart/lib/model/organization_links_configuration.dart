//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OrganizationLinksConfiguration {
  /// Returns a new [OrganizationLinksConfiguration] instance.
  OrganizationLinksConfiguration({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OrganizationLinksConfiguration] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationLinksConfiguration? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return OrganizationLinksConfiguration(
      href: json[r'href'],
      iriTemplate: OrganizationLinksConfigurationIriTemplate.fromJson(
          json[r'iriTemplate']),
    );
  }

  /// The URI of the configuration associated to the given organization.
  String? href;

  OrganizationLinksConfigurationIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksConfiguration &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<OrganizationLinksConfiguration> listFromJson(Iterable? json) {
    if (json == null) {
      return <OrganizationLinksConfiguration>[];
    }

    return json.fold(<OrganizationLinksConfiguration>[],
        (List<OrganizationLinksConfiguration> previousValue, element) {
      final OrganizationLinksConfiguration? object =
          OrganizationLinksConfiguration.fromJson(element);
      if (object is OrganizationLinksConfiguration) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OrganizationLinksConfiguration> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OrganizationLinksConfiguration>{};
    }

    return json.entries.fold(<String, OrganizationLinksConfiguration>{},
        (Map<String, OrganizationLinksConfiguration> previousValue, element) {
      final OrganizationLinksConfiguration? object =
          OrganizationLinksConfiguration.fromJson(element.value);
      if (object is OrganizationLinksConfiguration) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OrganizationLinksConfiguration-objects as value to a dart map
  static Map<String, List<OrganizationLinksConfiguration>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OrganizationLinksConfiguration>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OrganizationLinksConfiguration>>(
          key, OrganizationLinksConfiguration.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OrganizationLinksConfiguration[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'href')) r'href': href,
      if (keys == null ||
          keys.any((key) => RegExp(r'^iriTemplate\.').hasMatch(key)))
        r'iriTemplate': iriTemplate?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^iriTemplate\.'))) {
            previousValue.add(element.split(RegExp(r'^iriTemplate\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
