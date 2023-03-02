//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class SectionCollection {
  /// Returns a new [SectionCollection] instance.
  SectionCollection({
    this.items = const [],
  });

  /// Returns a new [SectionCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory SectionCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return SectionCollection(
      items: Section.listFromJson(json[r'items']),
    );
  }

  List<Section> items;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SectionCollection &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  @override
  int get hashCode => (items == null ? 0 : items.hashCode);

  static List<SectionCollection> listFromJson(List<dynamic> json) {
    return <SectionCollection>[
      if (json is List)
        for (dynamic value in json) SectionCollection.fromJson(value),
    ];
  }

  static Map<String, SectionCollection> mapFromJson(Map<String, dynamic> json) {
    return <String, SectionCollection>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: SectionCollection.fromJson(entry.value),
    };
  }

  // maps a json object with a list of SectionCollection-objects as value to a dart map
  static Map<String, List<SectionCollection>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<SectionCollection>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: SectionCollection.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'SectionCollection[items=$items]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (items != null) r'items': items,
    };
  }
}
