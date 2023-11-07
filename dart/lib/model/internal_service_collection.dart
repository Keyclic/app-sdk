//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class InternalServiceCollection {
  /// Returns a new [InternalServiceCollection] instance.
  InternalServiceCollection({
    this.items = const [],
  });

  /// Returns a new [InternalServiceCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InternalServiceCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalServiceCollection(
      items: json[r'items'] is! Iterable
          ? null
          : InternalService.listFromJson(json[r'items']),
    );
  }

  List<InternalService>? items;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServiceCollection &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  @override
  int get hashCode => (items == null ? 0 : items.hashCode);

  static List<InternalServiceCollection> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <InternalServiceCollection>[];
    }

    return json.fold(<InternalServiceCollection>[],
        (List<InternalServiceCollection> previousValue, element) {
      final InternalServiceCollection? object =
          InternalServiceCollection.fromJson(element);
      if (object is InternalServiceCollection) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, InternalServiceCollection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, InternalServiceCollection>{};
    }

    return json.entries.fold(<String, InternalServiceCollection>{},
        (Map<String, InternalServiceCollection> previousValue, element) {
      final InternalServiceCollection? object =
          InternalServiceCollection.fromJson(element.value);
      if (object is InternalServiceCollection) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of InternalServiceCollection-objects as value to a dart map
  static Map<String, List<InternalServiceCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<InternalServiceCollection>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<InternalServiceCollection>>(
          key, InternalServiceCollection.listFromJson(value));
    });
  }

  @override
  String toString() => 'InternalServiceCollection[items=$items]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && items != null) ||
          (keys?.contains(r'items') ?? false))
        r'items': items,
    };
  }
}
