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

    return json.fold(<ServiceMemberData>[],
        (List<ServiceMemberData> previousValue, element) {
      final ServiceMemberData? object = ServiceMemberData.fromJson(element);
      if (object is ServiceMemberData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ServiceMemberData> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ServiceMemberData>{};
    }

    return json.entries.fold(<String, ServiceMemberData>{},
        (Map<String, ServiceMemberData> previousValue, element) {
      final ServiceMemberData? object =
          ServiceMemberData.fromJson(element.value);
      if (object is ServiceMemberData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ServiceMemberData-objects as value to a dart map
  static Map<String, List<ServiceMemberData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ServiceMemberData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ServiceMemberData>>(
          key, ServiceMemberData.listFromJson(value));
    });
  }

  @override
  String toString() => 'ServiceMemberData[member=$member]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'member': member,
    };
  }
}
