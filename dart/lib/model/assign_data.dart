//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class AssignData {
  /// Returns a new [AssignData] instance.
  AssignData({
    required this.member,
  });

  /// Returns a new [AssignData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssignData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AssignData(
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

    return other is AssignData && other.member == member;
  }

  @override
  int get hashCode => member.hashCode;

  static List<AssignData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <AssignData>[];
    }
    return json
        .map((value) {
          return AssignData.fromJson(value);
        })
        .whereType<AssignData>()
        .toList();
  }

  static Map<String, AssignData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignData>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, AssignData?>(key, AssignData.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, AssignData>;
  }

  // maps a json object with a list of AssignData-objects as value to a dart map
  static Map<String, List<AssignData>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<AssignData>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: AssignData.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'AssignData[member=$member]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'member': member,
    };
  }
}
