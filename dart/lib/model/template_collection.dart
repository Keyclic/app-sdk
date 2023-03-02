//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class TemplateCollection {
  /// Returns a new [TemplateCollection] instance.
  TemplateCollection({
    this.items = const [],
  });

  /// Returns a new [TemplateCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory TemplateCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return TemplateCollection(
      items: Template.listFromJson(json[r'items']),
    );
  }

  List<Template> items;

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

  static List<TemplateCollection> listFromJson(List<dynamic> json) {
    return <TemplateCollection>[
      if (json is List)
        for (dynamic value in json) TemplateCollection.fromJson(value),
    ];
  }

  static Map<String, TemplateCollection> mapFromJson(
      Map<String, dynamic> json) {
    return <String, TemplateCollection>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: TemplateCollection.fromJson(entry.value),
    };
  }

  // maps a json object with a list of TemplateCollection-objects as value to a dart map
  static Map<String, List<TemplateCollection>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<TemplateCollection>>{
      if (json is Map)
        for (final entry in json.entries)
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
