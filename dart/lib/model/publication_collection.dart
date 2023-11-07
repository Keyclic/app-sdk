//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PublicationCollection {
  /// Returns a new [PublicationCollection] instance.
  PublicationCollection({
    this.items = const [],
  });

  /// Returns a new [PublicationCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PublicationCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PublicationCollection(
      items: json[r'items'] is! Iterable
          ? null
          : Publication.listFromJson(json[r'items']),
    );
  }

  List<Publication>? items;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationCollection &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  @override
  int get hashCode => (items == null ? 0 : items.hashCode);

  static List<PublicationCollection> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <PublicationCollection>[];
    }

    return json.fold(<PublicationCollection>[],
        (List<PublicationCollection> previousValue, element) {
      final PublicationCollection? object =
          PublicationCollection.fromJson(element);
      if (object is PublicationCollection) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PublicationCollection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PublicationCollection>{};
    }

    return json.entries.fold(<String, PublicationCollection>{},
        (Map<String, PublicationCollection> previousValue, element) {
      final PublicationCollection? object =
          PublicationCollection.fromJson(element.value);
      if (object is PublicationCollection) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PublicationCollection-objects as value to a dart map
  static Map<String, List<PublicationCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PublicationCollection>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PublicationCollection>>(
          key, PublicationCollection.listFromJson(value));
    });
  }

  @override
  String toString() => 'PublicationCollection[items=$items]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && items != null) ||
          (keys?.contains(r'items') ?? false))
        r'items': items,
    };
  }
}
