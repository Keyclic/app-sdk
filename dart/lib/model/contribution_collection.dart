//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ContributionCollection {
  /// Returns a new [ContributionCollection] instance.
  ContributionCollection({
    this.items = const [],
  });

  /// Returns a new [ContributionCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ContributionCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ContributionCollection(
      items: Contribution.listFromJson(json[r'items']),
    );
  }

  List<Contribution> items;

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

  static List<ContributionCollection> listFromJson(List<dynamic> json) {
    return <ContributionCollection>[
      if (json is List)
        for (dynamic value in json) ContributionCollection.fromJson(value),
    ];
  }

  static Map<String, ContributionCollection> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ContributionCollection>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ContributionCollection.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ContributionCollection-objects as value to a dart map
  static Map<String, List<ContributionCollection>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ContributionCollection>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ContributionCollection.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ContributionCollection[items=$items]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (items != null) r'items': items,
    };
  }
}
