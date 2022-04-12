//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ExternalServiceCollection {
  /// Returns a new [ExternalServiceCollection] instance.
  ExternalServiceCollection({
    this.items = const [],
  });

  /// Returns a new [ExternalServiceCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ExternalServiceCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ExternalServiceCollection(
      items: ExternalService.listFromJson(json[r'items']),
    );
  }

  List<ExternalService> items;

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

  static List<ExternalServiceCollection> listFromJson(List<dynamic> json) {
    return <ExternalServiceCollection>[
      if (json is List)
        for (dynamic value in json) ExternalServiceCollection.fromJson(value),
    ];
  }

  static Map<String, ExternalServiceCollection> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ExternalServiceCollection>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ExternalServiceCollection.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ExternalServiceCollection-objects as value to a dart map
  static Map<String, List<ExternalServiceCollection>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ExternalServiceCollection>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ExternalServiceCollection.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ExternalServiceCollection[items=$items]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (items != null) r'items': items,
    };
  }
}
