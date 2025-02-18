//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class EmbeddedFileCollection {
  /// Returns a new [EmbeddedFileCollection] instance.
  EmbeddedFileCollection({
    this.items,
  });

  /// Returns a new [EmbeddedFileCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EmbeddedFileCollection? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return EmbeddedFileCollection(
      items: EmbeddedFile.listFromJson(json[r'items']),
    );
  }

  List<EmbeddedFile>? items;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is EmbeddedFileCollection &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  @override
  int get hashCode => (items == null ? 0 : items.hashCode);

  static List<EmbeddedFileCollection> listFromJson(Iterable? json) {
    if (json == null) {
      return <EmbeddedFileCollection>[];
    }

    return json.fold(<EmbeddedFileCollection>[],
        (List<EmbeddedFileCollection> previousValue, element) {
      final EmbeddedFileCollection? object =
          EmbeddedFileCollection.fromJson(element);
      if (object is EmbeddedFileCollection) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, EmbeddedFileCollection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, EmbeddedFileCollection>{};
    }

    return json.entries.fold(<String, EmbeddedFileCollection>{},
        (Map<String, EmbeddedFileCollection> previousValue, element) {
      final EmbeddedFileCollection? object =
          EmbeddedFileCollection.fromJson(element.value);
      if (object is EmbeddedFileCollection) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of EmbeddedFileCollection-objects as value to a dart map
  static Map<String, List<EmbeddedFileCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<EmbeddedFileCollection>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<EmbeddedFileCollection>>(
          key, EmbeddedFileCollection.listFromJson(value));
    });
  }

  @override
  String toString() => 'EmbeddedFileCollection[items=$items]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'items')) r'items': items,
    };
  }
}
