//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlacePatchPreferences {
  /// Returns a new [PlacePatchPreferences] instance.
  PlacePatchPreferences({
    this.visibility,
  });

  /// Returns a new [PlacePatchPreferences] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlacePatchPreferences? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlacePatchPreferences(
      visibility: json[r'visibility'],
    );
  }

  String? visibility;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlacePatchPreferences && other.visibility == visibility;
  }

  @override
  int get hashCode => (visibility == null ? 0 : visibility.hashCode);

  static List<PlacePatchPreferences> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PlacePatchPreferences>[];
    }

    return json.fold(<PlacePatchPreferences>[],
        (List<PlacePatchPreferences> previousValue, element) {
      final PlacePatchPreferences? object =
          PlacePatchPreferences.fromJson(element);
      if (object is PlacePatchPreferences) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlacePatchPreferences> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlacePatchPreferences>{};
    }

    return json.entries.fold(<String, PlacePatchPreferences>{},
        (Map<String, PlacePatchPreferences> previousValue, element) {
      final PlacePatchPreferences? object =
          PlacePatchPreferences.fromJson(element.value);
      if (object is PlacePatchPreferences) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlacePatchPreferences-objects as value to a dart map
  static Map<String, List<PlacePatchPreferences>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlacePatchPreferences>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlacePatchPreferences>>(
          key, PlacePatchPreferences.listFromJson(value));
    });
  }

  @override
  String toString() => 'PlacePatchPreferences[visibility=$visibility]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'visibility'))
        r'visibility': visibility,
    };
  }
}
