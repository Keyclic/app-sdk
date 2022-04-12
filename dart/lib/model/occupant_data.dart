//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OccupantData {
  /// Returns a new [OccupantData] instance.
  OccupantData({
    @required this.member,
    @required this.place,
  });

  /// Returns a new [OccupantData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OccupantData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OccupantData(
      member: json[r'member'],
      place: json[r'place'],
    );
  }

  String member;

  String place;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantData &&
        other.member == member &&
        other.place == place;
  }

  @override
  int get hashCode =>
      (member == null ? 0 : member.hashCode) +
      (place == null ? 0 : place.hashCode);

  static List<OccupantData> listFromJson(List<dynamic> json) {
    return <OccupantData>[
      if (json is List)
        for (dynamic value in json) OccupantData.fromJson(value),
    ];
  }

  static Map<String, OccupantData> mapFromJson(Map<String, dynamic> json) {
    return <String, OccupantData>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OccupantData.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OccupantData-objects as value to a dart map
  static Map<String, List<OccupantData>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OccupantData>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OccupantData.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'OccupantData[member=$member, place=$place]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'member': member,
      r'place': place,
    };
  }
}
