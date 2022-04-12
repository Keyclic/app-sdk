//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OrganizationCollection {
  /// Returns a new [OrganizationCollection] instance.
  OrganizationCollection({
    this.items = const [],
  });

  /// Returns a new [OrganizationCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OrganizationCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationCollection(
      items: Organization.listFromJson(json[r'items']),
    );
  }

  List<Organization> items;

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

  static List<OrganizationCollection> listFromJson(List<dynamic> json) {
    return <OrganizationCollection>[
      if (json is List)
        for (dynamic value in json) OrganizationCollection.fromJson(value),
    ];
  }

  static Map<String, OrganizationCollection> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OrganizationCollection>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OrganizationCollection.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OrganizationCollection-objects as value to a dart map
  static Map<String, List<OrganizationCollection>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OrganizationCollection>>{
      if (json is Map)
        for (final entry in json.entries)
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
