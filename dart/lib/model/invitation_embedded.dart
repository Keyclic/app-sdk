//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class InvitationEmbedded {
  /// Returns a new [InvitationEmbedded] instance.
  InvitationEmbedded({
    this.member,
  });

  /// Returns a new [InvitationEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InvitationEmbedded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InvitationEmbedded(
      member: Member.fromJson(json[r'member']),
    );
  }

  Member? member;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InvitationEmbedded && other.member == member;
  }

  @override
  int get hashCode => (member == null ? 0 : member.hashCode);

  static List<InvitationEmbedded> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <InvitationEmbedded>[];
    }
    return json
        .map((value) {
          return InvitationEmbedded.fromJson(value);
        })
        .whereType<InvitationEmbedded>()
        .toList();
  }

  static Map<String, InvitationEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, InvitationEmbedded>{};
    }

    final map = json.map((key, value) => MapEntry<String, InvitationEmbedded?>(
        key, InvitationEmbedded.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, InvitationEmbedded>;
  }

  // maps a json object with a list of InvitationEmbedded-objects as value to a dart map
  static Map<String, List<InvitationEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<InvitationEmbedded>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: InvitationEmbedded.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'InvitationEmbedded[member=$member]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (member != null) r'member': member,
    };
  }
}
