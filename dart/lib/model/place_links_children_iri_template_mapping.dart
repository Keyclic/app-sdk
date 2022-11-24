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

    return json.fold(<PlaceLinksChildrenIriTemplateMapping>[],
        (List<PlaceLinksChildrenIriTemplateMapping> previousValue, element) {
      final PlaceLinksChildrenIriTemplateMapping? object =
          PlaceLinksChildrenIriTemplateMapping.fromJson(element);
      if (object is PlaceLinksChildrenIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlaceLinksChildrenIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceLinksChildrenIriTemplateMapping>{};
    }

    return json.entries.fold(<String, PlaceLinksChildrenIriTemplateMapping>{},
        (Map<String, PlaceLinksChildrenIriTemplateMapping> previousValue,
            element) {
      final PlaceLinksChildrenIriTemplateMapping? object =
          PlaceLinksChildrenIriTemplateMapping.fromJson(element.value);
      if (object is PlaceLinksChildrenIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlaceLinksChildrenIriTemplateMapping-objects as value to a dart map
  static Map<String, List<PlaceLinksChildrenIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlaceLinksChildrenIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlaceLinksChildrenIriTemplateMapping>>(
          key, PlaceLinksChildrenIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() => 'PlaceLinksChildrenIriTemplateMapping[parent=$parent]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (parent != null) r'parent': parent,
    };
  }
}
