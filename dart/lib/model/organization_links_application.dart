//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OrganizationLinksApplication {
  /// Returns a new [OrganizationLinksApplication] instance.
  OrganizationLinksApplication({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OrganizationLinksApplication] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationLinksApplication? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return OrganizationLinksApplication(
      href: json[r'href'],
      iriTemplate: OrganizationLinksApplicationIriTemplate.fromJson(
          json[r'iriTemplate']),
    );
  }

  /// The URI of the application associated to the given organization.
  String? href;

  OrganizationLinksApplicationIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksApplication &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<OrganizationLinksApplication> listFromJson(Iterable? json) {
    if (json == null) {
      return <OrganizationLinksApplication>[];
    }

    return json.fold(<OrganizationLinksApplication>[],
        (List<OrganizationLinksApplication> previousValue, element) {
      final OrganizationLinksApplication? object =
          OrganizationLinksApplication.fromJson(element);
      if (object is OrganizationLinksApplication) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OrganizationLinksApplication> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OrganizationLinksApplication>{};
    }

    return json.entries.fold(<String, OrganizationLinksApplication>{},
        (Map<String, OrganizationLinksApplication> previousValue, element) {
      final OrganizationLinksApplication? object =
          OrganizationLinksApplication.fromJson(element.value);
      if (object is OrganizationLinksApplication) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OrganizationLinksApplication-objects as value to a dart map
  static Map<String, List<OrganizationLinksApplication>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OrganizationLinksApplication>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OrganizationLinksApplication>>(
          key, OrganizationLinksApplication.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OrganizationLinksApplication[href=$href, iriTemplate=$iriTemplate]';

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
