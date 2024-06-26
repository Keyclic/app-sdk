//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class InternalServiceLinksOrganization {
  /// Returns a new [InternalServiceLinksOrganization] instance.
  InternalServiceLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [InternalServiceLinksOrganization] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InternalServiceLinksOrganization? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return InternalServiceLinksOrganization(
      href: json[r'href'],
      iriTemplate: InternalServiceLinksOrganizationIriTemplate.fromJson(
          json[r'iriTemplate']),
    );
  }

  /// The URI of the organization associated to the given internalservice.
  String? href;

  InternalServiceLinksOrganizationIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServiceLinksOrganization &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<InternalServiceLinksOrganization> listFromJson(Iterable? json) {
    if (json == null) {
      return <InternalServiceLinksOrganization>[];
    }

    return json.fold(<InternalServiceLinksOrganization>[],
        (List<InternalServiceLinksOrganization> previousValue, element) {
      final InternalServiceLinksOrganization? object =
          InternalServiceLinksOrganization.fromJson(element);
      if (object is InternalServiceLinksOrganization) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, InternalServiceLinksOrganization> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, InternalServiceLinksOrganization>{};
    }

    return json.entries.fold(<String, InternalServiceLinksOrganization>{},
        (Map<String, InternalServiceLinksOrganization> previousValue, element) {
      final InternalServiceLinksOrganization? object =
          InternalServiceLinksOrganization.fromJson(element.value);
      if (object is InternalServiceLinksOrganization) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of InternalServiceLinksOrganization-objects as value to a dart map
  static Map<String, List<InternalServiceLinksOrganization>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<InternalServiceLinksOrganization>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<InternalServiceLinksOrganization>>(
          key, InternalServiceLinksOrganization.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'InternalServiceLinksOrganization[href=$href, iriTemplate=$iriTemplate]';

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
