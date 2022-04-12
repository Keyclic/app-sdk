//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PlaceLinksChildrenIriTemplate {
  /// Returns a new [PlaceLinksChildrenIriTemplate] instance.
  PlaceLinksChildrenIriTemplate({
    this.mapping,
  });

  /// Returns a new [PlaceLinksChildrenIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PlaceLinksChildrenIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceLinksChildrenIriTemplate(
      mapping: PlaceLinksChildrenIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  PlaceLinksChildrenIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksChildrenIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<PlaceLinksChildrenIriTemplate> listFromJson(List<dynamic> json) {
    return <PlaceLinksChildrenIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          PlaceLinksChildrenIriTemplate.fromJson(value),
    ];
  }

  static Map<String, PlaceLinksChildrenIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, PlaceLinksChildrenIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlaceLinksChildrenIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PlaceLinksChildrenIriTemplate-objects as value to a dart map
  static Map<String, List<PlaceLinksChildrenIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PlaceLinksChildrenIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlaceLinksChildrenIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PlaceLinksChildrenIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
