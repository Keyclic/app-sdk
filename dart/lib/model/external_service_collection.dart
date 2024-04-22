//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ExternalServiceCollection {
  /// Returns a new [ExternalServiceCollection] instance.
  ExternalServiceCollection({
    this.items,
  });

  /// Returns a new [ExternalServiceCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ExternalServiceCollection? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ExternalServiceCollection(
      items: ExternalService.listFromJson(json[r'items']),
    );
  }

  List<ExternalService>? items;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalServiceCollection &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  @override
  int get hashCode => (items == null ? 0 : items.hashCode);

  static List<ExternalServiceCollection> listFromJson(Iterable? json) {
    if (json == null) {
      return <ExternalServiceCollection>[];
    }

    return json.fold(<ExternalServiceCollection>[],
        (List<ExternalServiceCollection> previousValue, element) {
      final ExternalServiceCollection? object =
          ExternalServiceCollection.fromJson(element);
      if (object is ExternalServiceCollection) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ExternalServiceCollection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ExternalServiceCollection>{};
    }

    return json.entries.fold(<String, ExternalServiceCollection>{},
        (Map<String, ExternalServiceCollection> previousValue, element) {
      final ExternalServiceCollection? object =
          ExternalServiceCollection.fromJson(element.value);
      if (object is ExternalServiceCollection) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ExternalServiceCollection-objects as value to a dart map
  static Map<String, List<ExternalServiceCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ExternalServiceCollection>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ExternalServiceCollection>>(
          key, ExternalServiceCollection.listFromJson(value));
    });
  }

  @override
  String toString() => 'ExternalServiceCollection[items=$items]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'items')) r'items': items,
    };
  }
}
