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
  static OrganizationLinksDispatcher? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OrganizationLinksDispatcher(
      href: json[r'href'],
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : OrganizationLinksDispatcherIriTemplate.fromJson(
              json[r'iriTemplate']),
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

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && href != null) || (keys?.contains(r'href') ?? false))
        r'href': href,
      if ((keys == null && iriTemplate != null) ||
          (keys?.contains(r'iriTemplate') ?? false))
        r'iriTemplate': iriTemplate?.toJson(),
    };
  }
}
