//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OccupantData {
  /// Returns a new [OccupantData] instance.
  OccupantData({
    required this.asset,
    required this.member,
  });

  /// Returns a new [OccupantData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OccupantData? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return OccupantData(
      asset: json[r'asset'],
      member: json[r'member'],
    );
  }

  String asset;

  String member;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantData &&
        other.asset == asset &&
        other.member == member;
  }

  @override
  int get hashCode => asset.hashCode + member.hashCode;

  static List<OccupantData> listFromJson(Iterable? json) {
    if (json == null) {
      return <OccupantData>[];
    }

    return json.fold(<OccupantData>[],
        (List<OccupantData> previousValue, element) {
      final OccupantData? object = OccupantData.fromJson(element);
      if (object is OccupantData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OccupantData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OccupantData>{};
    }

    return json.entries.fold(<String, OccupantData>{},
        (Map<String, OccupantData> previousValue, element) {
      final OccupantData? object = OccupantData.fromJson(element.value);
      if (object is OccupantData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OccupantData-objects as value to a dart map
  static Map<String, List<OccupantData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OccupantData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OccupantData>>(
          key, OccupantData.listFromJson(value));
    });
  }

  @override
  String toString() => 'OccupantData[asset=$asset, member=$member]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'asset': asset,
      r'member': member,
    };
  }
}
