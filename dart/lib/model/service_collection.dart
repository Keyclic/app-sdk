//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ServiceCollection {
  /// Returns a new [ServiceCollection] instance.
  ServiceCollection({
    this.items = const [],
  });

  /// Returns a new [ServiceCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ServiceCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ServiceCollection(
      items: json[r'items'] is! Iterable
          ? null
          : Service.listFromJson(json[r'items']),
    );
  }

  List<Service>? items;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ServiceCollection &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  @override
  int get hashCode => (items == null ? 0 : items.hashCode);

  static List<ServiceCollection> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <ServiceCollection>[];
    }

    return json.fold(<ServiceCollection>[],
        (List<ServiceCollection> previousValue, element) {
      final ServiceCollection? object = ServiceCollection.fromJson(element);
      if (object is ServiceCollection) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ServiceCollection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ServiceCollection>{};
    }

    return json.entries.fold(<String, ServiceCollection>{},
        (Map<String, ServiceCollection> previousValue, element) {
      final ServiceCollection? object =
          ServiceCollection.fromJson(element.value);
      if (object is ServiceCollection) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ServiceCollection-objects as value to a dart map
  static Map<String, List<ServiceCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ServiceCollection>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ServiceCollection>>(
          key, ServiceCollection.listFromJson(value));
    });
  }

  @override
  String toString() => 'ServiceCollection[items=$items]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && items != null) ||
          (keys?.contains(r'items') ?? false))
        r'items': items,
    };
  }
}
