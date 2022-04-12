//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BusinessActivityCollection {
  /// Returns a new [BusinessActivityCollection] instance.
  BusinessActivityCollection({
    this.items = const [],
  });

  /// Returns a new [BusinessActivityCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BusinessActivityCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessActivityCollection(
      items: BusinessActivity.listFromJson(json[r'items']),
    );
  }

  List<BusinessActivity>? items;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivityCollection &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  @override
  int get hashCode => (items == null ? 0 : items.hashCode);

  static List<BusinessActivityCollection> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <BusinessActivityCollection>[];
    }
    return json
        .map((value) {
          return BusinessActivityCollection.fromJson(value);
        })
        .whereType<BusinessActivityCollection>()
        .toList();
  }

  static Map<String, BusinessActivityCollection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BusinessActivityCollection>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, BusinessActivityCollection?>(
            key, BusinessActivityCollection.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, BusinessActivityCollection>;
  }

  // maps a json object with a list of BusinessActivityCollection-objects as value to a dart map
  static Map<String, List<BusinessActivityCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<BusinessActivityCollection>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: BusinessActivityCollection.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'BusinessActivityCollection[items=$items]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (items != null) r'items': items,
    };
  }
}
