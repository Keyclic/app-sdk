//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OrganizationLinksLogo {
  /// Returns a new [OrganizationLinksLogo] instance.
  OrganizationLinksLogo({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OrganizationLinksLogo] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationLinksLogo? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return OrganizationLinksLogo(
      href: json[r'href'],
      iriTemplate:
          OrganizationLinksLogoIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the logo associated to the given organization.
  String? href;

  OrganizationLinksLogoIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksLogo &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<OrganizationLinksLogo> listFromJson(Iterable? json) {
    if (json == null) {
      return <OrganizationLinksLogo>[];
    }

    return json.fold(<OrganizationLinksLogo>[],
        (List<OrganizationLinksLogo> previousValue, element) {
      final OrganizationLinksLogo? object =
          OrganizationLinksLogo.fromJson(element);
      if (object is OrganizationLinksLogo) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OrganizationLinksLogo> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OrganizationLinksLogo>{};
    }

    return json.entries.fold(<String, OrganizationLinksLogo>{},
        (Map<String, OrganizationLinksLogo> previousValue, element) {
      final OrganizationLinksLogo? object =
          OrganizationLinksLogo.fromJson(element.value);
      if (object is OrganizationLinksLogo) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OrganizationLinksLogo-objects as value to a dart map
  static Map<String, List<OrganizationLinksLogo>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OrganizationLinksLogo>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OrganizationLinksLogo>>(
          key, OrganizationLinksLogo.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OrganizationLinksLogo[href=$href, iriTemplate=$iriTemplate]';

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
