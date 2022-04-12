//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class InvitationData {
  /// Returns a new [InvitationData] instance.
  InvitationData({
    required this.member,
  });

  /// Returns a new [InvitationData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InvitationData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InvitationData(
      member: json[r'member'],
    );
  }

  String member;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InvitationData && other.member == member;
  }

  @override
  int get hashCode => member.hashCode;

  static List<InvitationData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <InvitationData>[];
    }
    return json
        .map((value) {
          return InvitationData.fromJson(value);
        })
        .whereType<InvitationData>()
        .toList();
  }

  static Map<String, InvitationData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, InvitationData>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, InvitationData?>(key, InvitationData.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, InvitationData>;
  }

  // maps a json object with a list of InvitationData-objects as value to a dart map
  static Map<String, List<InvitationData>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<InvitationData>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: InvitationData.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'InvitationData[member=$member]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'member': member,
    };
  }
}
