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
    return json
        .map((value) {
          return MemberLinksPerson.fromJson(value);
        })
        .whereType<MemberLinksPerson>()
        .toList();
  }

  static Map<String, MemberLinksPerson> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MemberLinksPerson>{};
    }

    final map = json.map((key, value) => MapEntry<String, MemberLinksPerson?>(
        key, MemberLinksPerson.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, MemberLinksPerson>;
  }

  // maps a json object with a list of MemberLinksPerson-objects as value to a dart map
  static Map<String, List<MemberLinksPerson>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<MemberLinksPerson>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: MemberLinksPerson.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'MemberLinksPerson[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
