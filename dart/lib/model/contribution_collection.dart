//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ContributionCollection {
  /// Returns a new [ContributionCollection] instance.
  ContributionCollection({
    this.items,
  });

  /// Returns a new [ContributionCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContributionCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ContributionCollection(
      items: json[r'items'] is! Iterable
          ? null
          : Contribution.listFromJson(json[r'items']),
    );
  }

  List<Contribution>? items;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContributionCollection &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  @override
  int get hashCode => (items == null ? 0 : items.hashCode);

  static List<ContributionCollection> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <ContributionCollection>[];
    }

    return json.fold(<ContributionCollection>[],
        (List<ContributionCollection> previousValue, element) {
      final ContributionCollection? object =
          ContributionCollection.fromJson(element);
      if (object is ContributionCollection) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContributionCollection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContributionCollection>{};
    }

    return json.entries.fold(<String, ContributionCollection>{},
        (Map<String, ContributionCollection> previousValue, element) {
      final ContributionCollection? object =
          ContributionCollection.fromJson(element.value);
      if (object is ContributionCollection) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContributionCollection-objects as value to a dart map
  static Map<String, List<ContributionCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContributionCollection>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContributionCollection>>(
          key, ContributionCollection.listFromJson(value));
    });
  }

  @override
  String toString() => 'ContributionCollection[items=$items]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && items != null) ||
          (keys?.contains(r'items') ?? false))
        r'items': items,
    };
  }
}
