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
      member: json[r'member'] is! Map ? null : Member.fromJson(json[r'member']),
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

  static List<InvitationEmbedded> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <InvitationEmbedded>[];
    }

    return json.fold(<InvitationEmbedded>[],
        (List<InvitationEmbedded> previousValue, element) {
      final InvitationEmbedded? object = InvitationEmbedded.fromJson(element);
      if (object is InvitationEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, InvitationEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, InvitationEmbedded>{};
    }

    return json.entries.fold(<String, InvitationEmbedded>{},
        (Map<String, InvitationEmbedded> previousValue, element) {
      final InvitationEmbedded? object =
          InvitationEmbedded.fromJson(element.value);
      if (object is InvitationEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of InvitationEmbedded-objects as value to a dart map
  static Map<String, List<InvitationEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<InvitationEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<InvitationEmbedded>>(
          key, InvitationEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'InvitationEmbedded[member=$member]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && member != null) ||
          (keys?.contains(r'member') ?? false))
        r'member': member?.toJson(),
    };
  }
}
