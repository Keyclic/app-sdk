//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MemberLinksSelf {
  /// Returns a new [MemberLinksSelf] instance.
  MemberLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [MemberLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MemberLinksSelf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MemberLinksSelf(
      href: json[r'href'],
      iriTemplate: MemberLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given member.
  String? href;

  MemberLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<MemberLinksSelf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <MemberLinksSelf>[];
    }
    return json
        .map((value) {
          return MemberLinksSelf.fromJson(value);
        })
        .whereType<MemberLinksSelf>()
        .toList();
  }

  static Map<String, MemberLinksSelf> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MemberLinksSelf>{};
    }

    final map = json.map((key, value) => MapEntry<String, MemberLinksSelf?>(
        key, MemberLinksSelf.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, MemberLinksSelf>;
  }

  // maps a json object with a list of MemberLinksSelf-objects as value to a dart map
  static Map<String, List<MemberLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<MemberLinksSelf>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: MemberLinksSelf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'MemberLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
