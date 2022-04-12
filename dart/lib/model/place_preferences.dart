//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlacePreferences {
  /// Returns a new [PlacePreferences] instance.
  PlacePreferences({
    this.public,
    this.visibility,
  });

  /// Returns a new [PlacePreferences] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlacePreferences? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlacePreferences(
      public: json[r'public'],
      visibility: json[r'visibility'],
    );
  }

  bool? public;

  String? visibility;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlacePreferences &&
        other.public == public &&
        other.visibility == visibility;
  }

  @override
  int get hashCode =>
      (public == null ? 0 : public.hashCode) +
      (visibility == null ? 0 : visibility.hashCode);

  static List<PlacePreferences> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PlacePreferences>[];
    }
    return json
        .map((value) {
          return PlacePreferences.fromJson(value);
        })
        .whereType<PlacePreferences>()
        .toList();
  }

  static Map<String, PlacePreferences> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlacePreferences>{};
    }

    final map = json.map((key, value) => MapEntry<String, PlacePreferences?>(
        key, PlacePreferences.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PlacePreferences>;
  }

  // maps a json object with a list of PlacePreferences-objects as value to a dart map
  static Map<String, List<PlacePreferences>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PlacePreferences>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: PlacePreferences.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'PlacePreferences[public=$public, visibility=$visibility]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (public != null) r'public': public,
      if (visibility != null) r'visibility': visibility,
    };
  }
}
