//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BusinessActivityCollection {
  /// Returns a new [BusinessActivityCollection] instance.
  BusinessActivityCollection({
    this.items,
  });

  /// Returns a new [BusinessActivityCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BusinessActivityCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessActivityCollection(
      items: json[r'items'] is! Iterable
          ? null
          : BusinessActivity.listFromJson(json[r'items']),
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

  static List<BusinessActivityCollection> listFromJson(
      Iterable<dynamic>? json) {
    if (json == null) {
      return <BusinessActivityCollection>[];
    }

    return json.fold(<BusinessActivityCollection>[],
        (List<BusinessActivityCollection> previousValue, element) {
      final BusinessActivityCollection? object =
          BusinessActivityCollection.fromJson(element);
      if (object is BusinessActivityCollection) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BusinessActivityCollection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BusinessActivityCollection>{};
    }

    return json.entries.fold(<String, BusinessActivityCollection>{},
        (Map<String, BusinessActivityCollection> previousValue, element) {
      final BusinessActivityCollection? object =
          BusinessActivityCollection.fromJson(element.value);
      if (object is BusinessActivityCollection) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BusinessActivityCollection-objects as value to a dart map
  static Map<String, List<BusinessActivityCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BusinessActivityCollection>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BusinessActivityCollection>>(
          key, BusinessActivityCollection.listFromJson(value));
    });
  }

  @override
  String toString() => 'BusinessActivityCollection[items=$items]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && items != null) ||
          (keys?.contains(r'items') ?? false))
        r'items': items,
    };
  }
}
