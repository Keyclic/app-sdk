//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PublicationLinksOrganization {
  /// Returns a new [PublicationLinksOrganization] instance.
  PublicationLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [PublicationLinksOrganization] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PublicationLinksOrganization? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PublicationLinksOrganization(
      href: json[r'href'],
      iriTemplate: PublicationLinksOrganizationIriTemplate.fromJson(
          json[r'iriTemplate']),
    );
  }

  /// The URI of the organization associated to the given publication.
  String? href;

  PublicationLinksOrganizationIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationLinksOrganization &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<PublicationLinksOrganization> listFromJson(Iterable? json) {
    if (json == null) {
      return <PublicationLinksOrganization>[];
    }

    return json.fold(<PublicationLinksOrganization>[],
        (List<PublicationLinksOrganization> previousValue, element) {
      final PublicationLinksOrganization? object =
          PublicationLinksOrganization.fromJson(element);
      if (object is PublicationLinksOrganization) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PublicationLinksOrganization> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PublicationLinksOrganization>{};
    }

    return json.entries.fold(<String, PublicationLinksOrganization>{},
        (Map<String, PublicationLinksOrganization> previousValue, element) {
      final PublicationLinksOrganization? object =
          PublicationLinksOrganization.fromJson(element.value);
      if (object is PublicationLinksOrganization) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PublicationLinksOrganization-objects as value to a dart map
  static Map<String, List<PublicationLinksOrganization>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PublicationLinksOrganization>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PublicationLinksOrganization>>(
          key, PublicationLinksOrganization.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PublicationLinksOrganization[href=$href, iriTemplate=$iriTemplate]';

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
