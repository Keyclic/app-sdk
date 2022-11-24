//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PlaceLinksChildrenIriTemplateMapping {
  /// Returns a new [PlaceLinksChildrenIriTemplateMapping] instance.
  PlaceLinksChildrenIriTemplateMapping({
    this.parent,
  });

  /// Returns a new [PlaceLinksChildrenIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PlaceLinksChildrenIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceLinksChildrenIriTemplateMapping(
      parent: json[r'parent'],
    );
  }

  String parent;

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
      List<dynamic> json) {
    return <PlaceLinksChildrenIriTemplateMapping>[
      if (json is List)
        for (dynamic value in json)
          PlaceLinksChildrenIriTemplateMapping.fromJson(value),
    ];
  }

  static Map<String, PlaceLinksChildrenIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return <String, PlaceLinksChildrenIriTemplateMapping>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlaceLinksChildrenIriTemplateMapping.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PlaceLinksChildrenIriTemplateMapping-objects as value to a dart map
  static Map<String, List<PlaceLinksChildrenIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic> json) {
    return <String, List<PlaceLinksChildrenIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json.entries)
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
