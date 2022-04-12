//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlaceLinksChildrenIriTemplateMapping {
  /// Returns a new [PlaceLinksChildrenIriTemplateMapping] instance.
  PlaceLinksChildrenIriTemplateMapping({
    this.parent,
  });

  /// Returns a new [PlaceLinksChildrenIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceLinksChildrenIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlaceLinksChildrenIriTemplateMapping(
      parent: json[r'parent'],
    );
  }

  String? parent;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksChildrenIriTemplateMapping &&
        other.parent == parent;
  }

  @override
  int get hashCode => (parent == null ? 0 : parent.hashCode);

  static List<PlaceLinksChildrenIriTemplateMapping> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <PlaceLinksChildrenIriTemplateMapping>[];
    }
    return json
        .map((value) {
          return PlaceLinksChildrenIriTemplateMapping.fromJson(value);
        })
        .whereType<PlaceLinksChildrenIriTemplateMapping>()
        .toList();
  }

  static Map<String, PlaceLinksChildrenIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceLinksChildrenIriTemplateMapping>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, PlaceLinksChildrenIriTemplateMapping?>(
            key, PlaceLinksChildrenIriTemplateMapping.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PlaceLinksChildrenIriTemplateMapping>;
  }

  // maps a json object with a list of PlaceLinksChildrenIriTemplateMapping-objects as value to a dart map
  static Map<String, List<PlaceLinksChildrenIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<PlaceLinksChildrenIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              PlaceLinksChildrenIriTemplateMapping.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PlaceLinksChildrenIriTemplateMapping[parent=$parent]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (parent != null) r'parent': parent,
    };
  }
}
