//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlanData {
  /// Returns a new [PlanData] instance.
  PlanData({
    required this.file,
    this.name,
    required this.place,
  });

  /// Returns a new [PlanData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlanData? fromJson(Map<String, dynamic>? json) {
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

  String? name;

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
      file.hashCode + (name == null ? 0 : name.hashCode) + place.hashCode;

  static List<PlanData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PlanData>[];
    }

    return json.fold(<PlanData>[], (List<PlanData> previousValue, element) {
      final PlanData? object = PlanData.fromJson(element);
      if (object is PlanData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlanData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlanData>{};
    }

    return json.entries.fold(<String, PlanData>{},
        (Map<String, PlanData> previousValue, element) {
      final PlanData? object = PlanData.fromJson(element.value);
      if (object is PlanData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlanData-objects as value to a dart map
  static Map<String, List<PlanData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlanData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlanData>>(
          key, PlanData.listFromJson(value));
    });
  }

  @override
  String toString() => 'PlanData[file=$file, name=$name, place=$place]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      r'file': file,
      if ((keys == null && name != null) || (keys?.contains(r'name') ?? false))
        r'name': name,
      r'place': place,
    };
  }
}
