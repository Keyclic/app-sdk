//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class SectionCollection {
  /// Returns a new [SectionCollection] instance.
  SectionCollection({
    this.items = const [],
  });

  /// Returns a new [SectionCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SectionCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SectionCollection(
      items: Section.listFromJson(json[r'items']),
    );
  }

  List<Section>? items;

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

  static List<SectionCollection> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <SectionCollection>[];
    }
    return json
        .map((value) {
          return SectionCollection.fromJson(value);
        })
        .whereType<SectionCollection>()
        .toList();
  }

  static Map<String, SectionCollection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SectionCollection>{};
    }

    final map = json.map((key, value) => MapEntry<String, SectionCollection?>(
        key, SectionCollection.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, SectionCollection>;
  }

  // maps a json object with a list of SectionCollection-objects as value to a dart map
  static Map<String, List<SectionCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<SectionCollection>>{
      if (json is Map)
        for (final entry in json!.entries)
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
