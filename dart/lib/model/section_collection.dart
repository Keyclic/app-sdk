//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class SectionCollection {
  /// Returns a new [SectionCollection] instance.
  SectionCollection({
    this.items,
  });

  /// Returns a new [SectionCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SectionCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SectionCollection(
      items: json[r'items'] is! Iterable
          ? null
          : Section.listFromJson(json[r'items']),
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

  static List<SectionCollection> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <SectionCollection>[];
    }

    return json.fold(<SectionCollection>[],
        (List<SectionCollection> previousValue, element) {
      final SectionCollection? object = SectionCollection.fromJson(element);
      if (object is SectionCollection) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, SectionCollection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SectionCollection>{};
    }

    return json.entries.fold(<String, SectionCollection>{},
        (Map<String, SectionCollection> previousValue, element) {
      final SectionCollection? object =
          SectionCollection.fromJson(element.value);
      if (object is SectionCollection) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of SectionCollection-objects as value to a dart map
  static Map<String, List<SectionCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<SectionCollection>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<SectionCollection>>(
          key, SectionCollection.listFromJson(value));
    });
  }

  @override
  String toString() => 'SectionCollection[items=$items]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && items != null) ||
          (keys?.contains(r'items') ?? false))
        r'items': items,
    };
  }
}
