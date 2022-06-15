//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OrganizationCollection {
  /// Returns a new [OrganizationCollection] instance.
  OrganizationCollection({
    this.items = const [],
  });

  /// Returns a new [OrganizationCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OrganizationCollection(
      items: Organization.listFromJson(json[r'items']),
    );
  }

  List<Organization>? items;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationCollection &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  @override
  int get hashCode => (items == null ? 0 : items.hashCode);

  static List<OrganizationCollection> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OrganizationCollection>[];
    }
    return json
        .map((value) {
          return OrganizationCollection.fromJson(value);
        })
        .whereType<OrganizationCollection>()
        .toList();
  }

  static Map<String, OrganizationCollection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OrganizationCollection>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, OrganizationCollection?>(
            key, OrganizationCollection.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, OrganizationCollection>;
  }

  // maps a json object with a list of OrganizationCollection-objects as value to a dart map
  static Map<String, List<OrganizationCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<OrganizationCollection>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: OrganizationCollection.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'OrganizationCollection[items=$items]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (items != null) r'items': items,
    };
  }
}
