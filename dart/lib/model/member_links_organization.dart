//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MemberLinksOrganization {
  /// Returns a new [MemberLinksOrganization] instance.
  MemberLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [MemberLinksOrganization] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MemberLinksOrganization? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MemberLinksOrganization(
      href: json[r'href'],
      iriTemplate:
          MemberLinksOrganizationIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the organization associated to the given member.
  String? href;

  MemberLinksOrganizationIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberLinksOrganization &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<MemberLinksOrganization> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <MemberLinksOrganization>[];
    }

    return json.fold(<MemberLinksOrganization>[],
        (List<MemberLinksOrganization> previousValue, element) {
      final MemberLinksOrganization? object =
          MemberLinksOrganization.fromJson(element);
      if (object is MemberLinksOrganization) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, MemberLinksOrganization> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MemberLinksOrganization>{};
    }

    return json.entries.fold(<String, MemberLinksOrganization>{},
        (Map<String, MemberLinksOrganization> previousValue, element) {
      final MemberLinksOrganization? object =
          MemberLinksOrganization.fromJson(element.value);
      if (object is MemberLinksOrganization) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of MemberLinksOrganization-objects as value to a dart map
  static Map<String, List<MemberLinksOrganization>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<MemberLinksOrganization>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<MemberLinksOrganization>>(
          key, MemberLinksOrganization.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'MemberLinksOrganization[href=$href, iriTemplate=$iriTemplate]';

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
