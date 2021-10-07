part of keyclic_sdk_api.api;

class TemplateCollection {
  TemplateCollection({
    this.items,
  });

  factory TemplateCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return TemplateCollection(
      items: Template.listFromJson(json['items']),
    );
  }

  List<Template> items;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is TemplateCollection &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (items is List && items.isNotEmpty) {
      hashCode ^= items
          .map((Template element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<TemplateCollection> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => TemplateCollection.fromJson(value))
            ?.toList() ??
        <TemplateCollection>[];
  }

  static Map<String, TemplateCollection> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, TemplateCollection>((String key, dynamic value) {
          return MapEntry(key, TemplateCollection.fromJson(value));
        }) ??
        <String, TemplateCollection>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (items != null) 'items': items,
    };
  }

  @override
  String toString() {
    return 'TemplateCollection[items=$items, ]';
  }
}
