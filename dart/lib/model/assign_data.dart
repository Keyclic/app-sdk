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
  static AssignData? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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

  static List<AssignData> listFromJson(Iterable? json) {
    if (json == null) {
      return <AssignData>[];
    }

    return json.fold(<AssignData>[], (List<AssignData> previousValue, element) {
      final AssignData? object = AssignData.fromJson(element);
      if (object is AssignData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AssignData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignData>{};
    }

    return json.entries.fold(<String, AssignData>{},
        (Map<String, AssignData> previousValue, element) {
      final AssignData? object = AssignData.fromJson(element.value);
      if (object is AssignData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AssignData-objects as value to a dart map
  static Map<String, List<AssignData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AssignData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AssignData>>(
          key, AssignData.listFromJson(value));
    });
  }

  @override
  String toString() => 'AssignData[member=$member]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'member': member,
    };
  }
}
