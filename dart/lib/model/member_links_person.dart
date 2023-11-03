//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MemberLinksPerson {
  /// Returns a new [MemberLinksPerson] instance.
  MemberLinksPerson({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [MemberLinksPerson] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MemberLinksPerson? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MemberLinksPerson(
      href: json[r'href'],
      iriTemplate: MemberLinksPersonIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the person associated to the given member.
  String? href;

  MemberLinksPersonIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberLinksPerson &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<MemberLinksPerson> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <MemberLinksPerson>[];
    }

    return json.fold(<MemberLinksPerson>[],
        (List<MemberLinksPerson> previousValue, element) {
      final MemberLinksPerson? object = MemberLinksPerson.fromJson(element);
      if (object is MemberLinksPerson) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, MemberLinksPerson> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MemberLinksPerson>{};
    }

    return json.entries.fold(<String, MemberLinksPerson>{},
        (Map<String, MemberLinksPerson> previousValue, element) {
      final MemberLinksPerson? object =
          MemberLinksPerson.fromJson(element.value);
      if (object is MemberLinksPerson) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of MemberLinksPerson-objects as value to a dart map
  static Map<String, List<MemberLinksPerson>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<MemberLinksPerson>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<MemberLinksPerson>>(
          key, MemberLinksPerson.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'MemberLinksPerson[href=$href, iriTemplate=$iriTemplate]';

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
