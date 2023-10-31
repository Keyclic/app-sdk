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

    return json.fold(<InvitationData>[],
        (List<InvitationData> previousValue, element) {
      final InvitationData? object = InvitationData.fromJson(element);
      if (object is InvitationData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, InvitationData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, InvitationData>{};
    }

    return json.entries.fold(<String, InvitationData>{},
        (Map<String, InvitationData> previousValue, element) {
      final InvitationData? object = InvitationData.fromJson(element.value);
      if (object is InvitationData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of InvitationData-objects as value to a dart map
  static Map<String, List<InvitationData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<InvitationData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<InvitationData>>(
          key, InvitationData.listFromJson(value));
    });
  }

  @override
  String toString() => 'InvitationData[member=$member]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      r'member': member,
    };
  }
}
