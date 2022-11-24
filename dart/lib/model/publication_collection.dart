//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PublicationCollection {
  /// Returns a new [PublicationCollection] instance.
  PublicationCollection({
    this.items = const [],
  });

  /// Returns a new [PublicationCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PublicationCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PublicationCollection(
      items: Publication.listFromJson(json[r'items']),
    );
  }

  List<Publication> items;

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

  static List<PublicationCollection> listFromJson(List<dynamic> json) {
    return <PublicationCollection>[
      if (json is List)
        for (dynamic value in json) PublicationCollection.fromJson(value),
    ];
  }

  static Map<String, PublicationCollection> mapFromJson(
      Map<String, dynamic> json) {
    return <String, PublicationCollection>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PublicationCollection.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PublicationCollection-objects as value to a dart map
  static Map<String, List<PublicationCollection>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PublicationCollection>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PublicationCollection.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PublicationCollection[items=$items]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (items != null) r'items': items,
    };
  }
}
