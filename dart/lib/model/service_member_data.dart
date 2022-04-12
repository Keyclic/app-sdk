//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ServiceMemberData {
  /// Returns a new [ServiceMemberData] instance.
  ServiceMemberData({
    @required this.member,
  });

  /// Returns a new [ServiceMemberData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ServiceMemberData.fromJson(Map<String, dynamic> json) {
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
  int get hashCode => (member == null ? 0 : member.hashCode);

  static List<ServiceMemberData> listFromJson(List<dynamic> json) {
    return <ServiceMemberData>[
      if (json is List)
        for (dynamic value in json) ServiceMemberData.fromJson(value),
    ];
  }

  static Map<String, ServiceMemberData> mapFromJson(Map<String, dynamic> json) {
    return <String, ServiceMemberData>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ServiceMemberData.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ServiceMemberData-objects as value to a dart map
  static Map<String, List<ServiceMemberData>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ServiceMemberData>>{
      if (json is Map)
        for (final entry in json.entries)
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
