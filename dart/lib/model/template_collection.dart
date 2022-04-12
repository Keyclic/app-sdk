//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class TemplateCollection {
  /// Returns a new [TemplateCollection] instance.
  TemplateCollection({
    this.items = const [],
  });

  /// Returns a new [TemplateCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TemplateCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TemplateCollection(
      items: Template.listFromJson(json[r'items']),
    );
  }

  List<Template>? items;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is TemplateCollection &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  @override
  int get hashCode => (items == null ? 0 : items.hashCode);

  static List<TemplateCollection> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <TemplateCollection>[];
    }
    return json
        .map((value) {
          return TemplateCollection.fromJson(value);
        })
        .whereType<TemplateCollection>()
        .toList();
  }

  static Map<String, TemplateCollection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, TemplateCollection>{};
    }

    final map = json.map((key, value) => MapEntry<String, TemplateCollection?>(
        key, TemplateCollection.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, TemplateCollection>;
  }

  // maps a json object with a list of TemplateCollection-objects as value to a dart map
  static Map<String, List<TemplateCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<TemplateCollection>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: TemplateCollection.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'TemplateCollection[items=$items]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (items != null) r'items': items,
    };
  }
}
