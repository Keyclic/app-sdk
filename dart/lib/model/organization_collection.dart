//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OrganizationCollection {
  /// Returns a new [OrganizationCollection] instance.
  OrganizationCollection({
    this.items,
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

    return json.fold(<OrganizationCollection>[],
        (List<OrganizationCollection> previousValue, element) {
      final OrganizationCollection? object =
          OrganizationCollection.fromJson(element);
      if (object is OrganizationCollection) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OrganizationCollection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OrganizationCollection>{};
    }

    return json.entries.fold(<String, OrganizationCollection>{},
        (Map<String, OrganizationCollection> previousValue, element) {
      final OrganizationCollection? object =
          OrganizationCollection.fromJson(element.value);
      if (object is OrganizationCollection) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OrganizationCollection-objects as value to a dart map
  static Map<String, List<OrganizationCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OrganizationCollection>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OrganizationCollection>>(
          key, OrganizationCollection.listFromJson(value));
    });
  }

  @override
  String toString() => 'OrganizationCollection[items=$items]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'items')) r'items': items,
    };
  }
}
