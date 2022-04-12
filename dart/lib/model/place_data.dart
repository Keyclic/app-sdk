//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PlaceData {
  /// Returns a new [PlaceData] instance.
  PlaceData({
    @required this.name,
    this.branchCode,
    this.polygon,
    @required this.organization,
  });

  /// Returns a new [PlaceData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PlaceData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceData(
      name: json[r'name'],
      branchCode: json[r'branchCode'],
      polygon: json[r'polygon'],
      organization: json[r'organization'],
    );
  }

  String name;

  String branchCode;

  String polygon;

  String organization;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceData &&
        other.name == name &&
        other.branchCode == branchCode &&
        other.polygon == polygon &&
        other.organization == organization;
  }

  @override
  int get hashCode =>
      (name == null ? 0 : name.hashCode) +
      (branchCode == null ? 0 : branchCode.hashCode) +
      (polygon == null ? 0 : polygon.hashCode) +
      (organization == null ? 0 : organization.hashCode);

  static List<PlaceData> listFromJson(List<dynamic> json) {
    return <PlaceData>[
      if (json is List)
        for (dynamic value in json) PlaceData.fromJson(value),
    ];
  }

  static Map<String, PlaceData> mapFromJson(Map<String, dynamic> json) {
    return <String, PlaceData>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlaceData.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PlaceData-objects as value to a dart map
  static Map<String, List<PlaceData>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PlaceData>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlaceData.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'PlaceData[name=$name, branchCode=$branchCode, polygon=$polygon, organization=$organization]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'name': name,
      if (branchCode != null) r'branchCode': branchCode,
      if (polygon != null) r'polygon': polygon,
      r'organization': organization,
    };
  }
}
