//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OrganizationLinksDispatcher {
  /// Returns a new [OrganizationLinksDispatcher] instance.
  OrganizationLinksDispatcher({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OrganizationLinksDispatcher] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationLinksDispatcher? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return OrganizationLinksDispatcher(
      href: json[r'href'],
      iriTemplate:
          OrganizationLinksDispatcherIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the dispatcher associated to the given organization.
  String? href;

  OrganizationLinksDispatcherIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksDispatcher &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<OrganizationLinksDispatcher> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OrganizationLinksDispatcher>[];
    }

    return json.fold(<OrganizationLinksDispatcher>[],
        (List<OrganizationLinksDispatcher> previousValue, element) {
      final OrganizationLinksDispatcher? object =
          OrganizationLinksDispatcher.fromJson(element);
      if (object is OrganizationLinksDispatcher) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OrganizationLinksDispatcher> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OrganizationLinksDispatcher>{};
    }

    return json.entries.fold(<String, OrganizationLinksDispatcher>{},
        (Map<String, OrganizationLinksDispatcher> previousValue, element) {
      final OrganizationLinksDispatcher? object =
          OrganizationLinksDispatcher.fromJson(element.value);
      if (object is OrganizationLinksDispatcher) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OrganizationLinksDispatcher-objects as value to a dart map
  static Map<String, List<OrganizationLinksDispatcher>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OrganizationLinksDispatcher>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OrganizationLinksDispatcher>>(
          key, OrganizationLinksDispatcher.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OrganizationLinksDispatcher[href=$href, iriTemplate=$iriTemplate]';

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
