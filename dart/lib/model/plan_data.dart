//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PlanData {
  /// Returns a new [PlanData] instance.
  PlanData({
    @required this.file,
    this.name,
    @required this.place,
  });

  /// Returns a new [PlanData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PlanData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlanData(
      file: json[r'file'],
      name: json[r'name'],
      place: json[r'place'],
    );
  }

  String file;

  String name;

  String place;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlanData &&
        other.file == file &&
        other.name == name &&
        other.place == place;
  }

  @override
  int get hashCode =>
      (file == null ? 0 : file.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (place == null ? 0 : place.hashCode);

  static List<PlanData> listFromJson(List<dynamic> json) {
    return <PlanData>[
      if (json is List)
        for (dynamic value in json) PlanData.fromJson(value),
    ];
  }

  static Map<String, PlanData> mapFromJson(Map<String, dynamic> json) {
    return <String, PlanData>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlanData.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PlanData-objects as value to a dart map
  static Map<String, List<PlanData>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PlanData>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlanData.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PlanData[file=$file, name=$name, place=$place]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'file': file,
      if (name != null) r'name': name,
      r'place': place,
    };
  }
}
