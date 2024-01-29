//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlaceData {
  /// Returns a new [PlaceData] instance.
  PlaceData({
    required this.name,
    this.branchCode,
    this.parent,
    this.polygon,
    required this.organization,
  });

  /// Returns a new [PlaceData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlaceData(
      name: json[r'name'],
      branchCode: json[r'branchCode'],
      parent: json[r'parent'],
      polygon: json[r'polygon'],
      organization: json[r'organization'],
    );
  }

  String name;

  String? branchCode;

  String? parent;

  String? polygon;

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
        other.parent == parent &&
        other.polygon == polygon &&
        other.organization == organization;
  }

  @override
  int get hashCode =>
      name.hashCode +
      (branchCode == null ? 0 : branchCode.hashCode) +
      (parent == null ? 0 : parent.hashCode) +
      (polygon == null ? 0 : polygon.hashCode) +
      organization.hashCode;

  static List<PlaceData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PlaceData>[];
    }

    return json.fold(<PlaceData>[], (List<PlaceData> previousValue, element) {
      final PlaceData? object = PlaceData.fromJson(element);
      if (object is PlaceData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlaceData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceData>{};
    }

    return json.entries.fold(<String, PlaceData>{},
        (Map<String, PlaceData> previousValue, element) {
      final PlaceData? object = PlaceData.fromJson(element.value);
      if (object is PlaceData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlaceData-objects as value to a dart map
  static Map<String, List<PlaceData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlaceData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlaceData>>(
          key, PlaceData.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PlaceData[name=$name, branchCode=$branchCode, parent=$parent, polygon=$polygon, organization=$organization]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'name': name,
      if (keys == null || keys.contains(r'branchCode'))
        r'branchCode': branchCode,
      if (keys == null || keys.contains(r'parent')) r'parent': parent,
      if (keys == null || keys.contains(r'polygon')) r'polygon': polygon,
      r'organization': organization,
    };
  }
}
