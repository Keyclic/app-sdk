//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ItemsChoice {
  /// Returns a new [ItemsChoice] instance.
  ItemsChoice({
    this.default_,
    this.description,
    this.enum_,
    this.format,
    this.id,
    this.maxItems,
    this.minItems,
    this.oneOf,
    this.propertyOrder,
    this.title,
    this.type,
  });

  /// Returns a new [ItemsChoice] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ItemsChoice? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ItemsChoice(
      default_: json[r'default'],
      description: json[r'description'],
      enum_: json[r'enum'] == null ? null : List<String>.from(json[r'enum']),
      format: json[r'format'],
      id: json[r'id'],
      maxItems: json[r'maxItems'],
      minItems: json[r'minItems'],
      oneOf: ItemsChoice.listFromJson(json[r'oneOf']),
      propertyOrder: json[r'propertyOrder'],
      title: json[r'title'],
      type: json[r'type'],
    );
  }

  String? default_;

  String? description;

  List<String>? enum_;

  String? format;

  final String? id;

  int? maxItems;

  int? minItems;

  List<ItemsChoice>? oneOf;

  int? propertyOrder;

  String? title;

  String? type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ItemsChoice &&
        other.default_ == default_ &&
        other.description == description &&
        DeepCollectionEquality.unordered().equals(enum_, other.enum_) &&
        other.format == format &&
        other.id == id &&
        other.maxItems == maxItems &&
        other.minItems == minItems &&
        DeepCollectionEquality.unordered().equals(oneOf, other.oneOf) &&
        other.propertyOrder == propertyOrder &&
        other.title == title &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (default_ == null ? 0 : default_.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (enum_ == null ? 0 : enum_.hashCode) +
      (format == null ? 0 : format.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (maxItems == null ? 0 : maxItems.hashCode) +
      (minItems == null ? 0 : minItems.hashCode) +
      (oneOf == null ? 0 : oneOf.hashCode) +
      (propertyOrder == null ? 0 : propertyOrder.hashCode) +
      (title == null ? 0 : title.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<ItemsChoice> listFromJson(Iterable? json) {
    if (json == null) {
      return <ItemsChoice>[];
    }

    return json.fold(<ItemsChoice>[],
        (List<ItemsChoice> previousValue, element) {
      final ItemsChoice? object = ItemsChoice.fromJson(element);
      if (object is ItemsChoice) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ItemsChoice> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ItemsChoice>{};
    }

    return json.entries.fold(<String, ItemsChoice>{},
        (Map<String, ItemsChoice> previousValue, element) {
      final ItemsChoice? object = ItemsChoice.fromJson(element.value);
      if (object is ItemsChoice) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ItemsChoice-objects as value to a dart map
  static Map<String, List<ItemsChoice>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ItemsChoice>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ItemsChoice>>(
          key, ItemsChoice.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ItemsChoice[default_=$default_, description=$description, enum_=$enum_, format=$format, id=$id, maxItems=$maxItems, minItems=$minItems, oneOf=$oneOf, propertyOrder=$propertyOrder, title=$title, type=$type]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'default_')) r'default': default_,
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      if (keys == null || keys.contains(r'enum_')) r'enum': enum_,
      if (keys == null || keys.contains(r'format')) r'format': format,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'maxItems')) r'maxItems': maxItems,
      if (keys == null || keys.contains(r'minItems')) r'minItems': minItems,
      if (keys == null || keys.contains(r'oneOf')) r'oneOf': oneOf,
      if (keys == null || keys.contains(r'propertyOrder'))
        r'propertyOrder': propertyOrder,
      if (keys == null || keys.contains(r'title')) r'title': title,
      if (keys == null || keys.contains(r'type')) r'type': type,
    };
  }
}
