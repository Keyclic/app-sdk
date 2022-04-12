//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ItemsChoice {
  /// Returns a new [ItemsChoice] instance.
  ItemsChoice({
    this.default_,
    this.description,
    this.enum_ = const [],
    this.format,
    this.id,
    this.maxItems,
    this.minItems,
    this.oneOf = const [],
    this.propertyOrder,
    this.title,
    this.type,
  });

  /// Returns a new [ItemsChoice] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ItemsChoice.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ItemsChoice(
      default_: json[r'default'],
      description: json[r'description'],
      enum_: List<String>.from(json[r'enum'] ?? []),
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

  String default_;

  String description;

  List<String> enum_;

  String format;

  String id;

  int maxItems;

  int minItems;

  List<ItemsChoice> oneOf;

  int propertyOrder;

  String title;

  String type;

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

  static List<ItemsChoice> listFromJson(List<dynamic> json) {
    return <ItemsChoice>[
      if (json is List)
        for (dynamic value in json) ItemsChoice.fromJson(value),
    ];
  }

  static Map<String, ItemsChoice> mapFromJson(Map<String, dynamic> json) {
    return <String, ItemsChoice>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ItemsChoice.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ItemsChoice-objects as value to a dart map
  static Map<String, List<ItemsChoice>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ItemsChoice>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ItemsChoice.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ItemsChoice[default_=$default_, description=$description, enum_=$enum_, format=$format, id=$id, maxItems=$maxItems, minItems=$minItems, oneOf=$oneOf, propertyOrder=$propertyOrder, title=$title, type=$type]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (default_ != null) r'default': default_,
      if (description != null) r'description': description,
      if (enum_ != null) r'enum': enum_,
      if (format != null) r'format': format,
      if (id != null) r'id': id,
      if (maxItems != null) r'maxItems': maxItems,
      if (minItems != null) r'minItems': minItems,
      if (oneOf != null) r'oneOf': oneOf,
      if (propertyOrder != null) r'propertyOrder': propertyOrder,
      if (title != null) r'title': title,
      if (type != null) r'type': type,
    };
  }
}
