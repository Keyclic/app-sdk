//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OrganizationLinksBusinessActivity {
  /// Returns a new [OrganizationLinksBusinessActivity] instance.
  OrganizationLinksBusinessActivity({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OrganizationLinksBusinessActivity] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationLinksBusinessActivity? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return OrganizationLinksBusinessActivity(
      href: json[r'href'],
      iriTemplate: OrganizationLinksBusinessActivityIriTemplate.fromJson(
          json[r'iriTemplate']),
    );
  }

  /// The URI of the businessActivity associated to the given organization.
  String? href;

  OrganizationLinksBusinessActivityIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksBusinessActivity &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<OrganizationLinksBusinessActivity> listFromJson(Iterable? json) {
    if (json == null) {
      return <OrganizationLinksBusinessActivity>[];
    }

    return json.fold(<OrganizationLinksBusinessActivity>[],
        (List<OrganizationLinksBusinessActivity> previousValue, element) {
      final OrganizationLinksBusinessActivity? object =
          OrganizationLinksBusinessActivity.fromJson(element);
      if (object is OrganizationLinksBusinessActivity) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OrganizationLinksBusinessActivity> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OrganizationLinksBusinessActivity>{};
    }

    return json.entries.fold(<String, OrganizationLinksBusinessActivity>{},
        (Map<String, OrganizationLinksBusinessActivity> previousValue,
            element) {
      final OrganizationLinksBusinessActivity? object =
          OrganizationLinksBusinessActivity.fromJson(element.value);
      if (object is OrganizationLinksBusinessActivity) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OrganizationLinksBusinessActivity-objects as value to a dart map
  static Map<String, List<OrganizationLinksBusinessActivity>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OrganizationLinksBusinessActivity>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OrganizationLinksBusinessActivity>>(
          key, OrganizationLinksBusinessActivity.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OrganizationLinksBusinessActivity[href=$href, iriTemplate=$iriTemplate]';

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
