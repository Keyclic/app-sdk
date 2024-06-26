//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OrganizationLinksSelf {
  /// Returns a new [OrganizationLinksSelf] instance.
  OrganizationLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OrganizationLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationLinksSelf? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return OrganizationLinksSelf(
      href: json[r'href'],
      iriTemplate:
          OrganizationLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given organization.
  String? href;

  OrganizationLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<OrganizationLinksSelf> listFromJson(Iterable? json) {
    if (json == null) {
      return <OrganizationLinksSelf>[];
    }

    return json.fold(<OrganizationLinksSelf>[],
        (List<OrganizationLinksSelf> previousValue, element) {
      final OrganizationLinksSelf? object =
          OrganizationLinksSelf.fromJson(element);
      if (object is OrganizationLinksSelf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OrganizationLinksSelf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OrganizationLinksSelf>{};
    }

    return json.entries.fold(<String, OrganizationLinksSelf>{},
        (Map<String, OrganizationLinksSelf> previousValue, element) {
      final OrganizationLinksSelf? object =
          OrganizationLinksSelf.fromJson(element.value);
      if (object is OrganizationLinksSelf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OrganizationLinksSelf-objects as value to a dart map
  static Map<String, List<OrganizationLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OrganizationLinksSelf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OrganizationLinksSelf>>(
          key, OrganizationLinksSelf.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OrganizationLinksSelf[href=$href, iriTemplate=$iriTemplate]';

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
