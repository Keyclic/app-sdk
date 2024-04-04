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
    this.preferences,
  });

  /// Returns a new [PlaceData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceData? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PlaceData(
      name: json[r'name'],
      branchCode: json[r'branchCode'],
      parent: json[r'parent'],
      polygon: json[r'polygon'],
      organization: json[r'organization'],
      preferences: PlaceDataPreferences.fromJson(json[r'preferences']),
    );
  }

  String name;

  String? branchCode;

  String? parent;

  String? polygon;

  String organization;

  PlaceDataPreferences? preferences;

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
        other.organization == organization &&
        other.preferences == preferences;
  }

  @override
  int get hashCode =>
      name.hashCode +
      (branchCode == null ? 0 : branchCode.hashCode) +
      (parent == null ? 0 : parent.hashCode) +
      (polygon == null ? 0 : polygon.hashCode) +
      organization.hashCode +
      (preferences == null ? 0 : preferences.hashCode);

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
      'PlaceData[name=$name, branchCode=$branchCode, parent=$parent, polygon=$polygon, organization=$organization, preferences=$preferences]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'name': name,
      if (keys == null || keys.contains(r'branchCode'))
        r'branchCode': branchCode,
      if (keys == null || keys.contains(r'parent')) r'parent': parent,
      if (keys == null || keys.contains(r'polygon')) r'polygon': polygon,
      r'organization': organization,
      if (keys == null ||
          keys.any((key) => RegExp(r'^preferences\.').hasMatch(key)))
        r'preferences': preferences?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^preferences\.'))) {
            previousValue.add(element.split(RegExp(r'^preferences\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
