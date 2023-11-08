//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class TemplateCollection {
  /// Returns a new [TemplateCollection] instance.
  TemplateCollection({
    this.items,
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

    return json.fold(<TemplateCollection>[],
        (List<TemplateCollection> previousValue, element) {
      final TemplateCollection? object = TemplateCollection.fromJson(element);
      if (object is TemplateCollection) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, TemplateCollection> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, TemplateCollection>{};
    }

    return json.entries.fold(<String, TemplateCollection>{},
        (Map<String, TemplateCollection> previousValue, element) {
      final TemplateCollection? object =
          TemplateCollection.fromJson(element.value);
      if (object is TemplateCollection) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of TemplateCollection-objects as value to a dart map
  static Map<String, List<TemplateCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<TemplateCollection>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<TemplateCollection>>(
          key, TemplateCollection.listFromJson(value));
    });
  }

  @override
  String toString() => 'TemplateCollection[items=$items]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && items != null) ||
          (keys?.contains(r'items') ?? false))
        r'items': items,
    };
  }
}
