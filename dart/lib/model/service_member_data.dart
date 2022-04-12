//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ServiceMemberData {
  /// Returns a new [ServiceMemberData] instance.
  ServiceMemberData({
    required this.member,
  });

  /// Returns a new [ServiceMemberData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ServiceMemberData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ServiceMemberData(
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

    return other is ServiceMemberData && other.member == member;
  }

  @override
  int get hashCode => member.hashCode;

  static List<ServiceMemberData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ServiceMemberData>[];
    }
    return json
        .map((value) {
          return ServiceMemberData.fromJson(value);
        })
        .whereType<ServiceMemberData>()
        .toList();
  }

  static Map<String, ServiceMemberData> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ServiceMemberData>{};
    }

    final map = json.map((key, value) => MapEntry<String, ServiceMemberData?>(
        key, ServiceMemberData.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ServiceMemberData>;
  }

  // maps a json object with a list of ServiceMemberData-objects as value to a dart map
  static Map<String, List<ServiceMemberData>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ServiceMemberData>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ServiceMemberData.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ServiceMemberData[member=$member]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'member': member,
    };
  }
}
