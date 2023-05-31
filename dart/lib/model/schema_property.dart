//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class SchemaProperty {
  /// Returns a new [SchemaProperty] instance.
  SchemaProperty({
    this.conditions,
    this.default_,
    this.description,
    this.enum_,
    this.format,
    this.id,
    this.items,
    this.maxItems,
    this.minItems,
    this.propertyOrder,
    this.title,
    this.type,
  });

  /// Returns a new [SchemaProperty] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SchemaProperty? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SchemaProperty(
      conditions: json[r'conditions'] is! Map
          ? null
          : PropertyConditionList.fromJson(json[r'conditions']),
      default_: json[r'default'],
      description: json[r'description'],
      enum_: json[r'enum'] == null ? null : List<String>.from(json[r'enum']),
      format: json[r'format'],
      id: json[r'id'],
      items: json[r'items'] is! Map
          ? null
          : PropertyItems.fromJson(json[r'items']),
      maxItems: json[r'maxItems'],
      minItems: json[r'minItems'],
      propertyOrder: json[r'propertyOrder'],
      title: json[r'title'],
      type: json[r'type'],
    );
  }

  PropertyConditionList? conditions;

  String? default_;

  String? description;

  List<String>? enum_;

  String? format;

  final String? id;

  PropertyItems? items;

  int? maxItems;

  int? minItems;

  int? propertyOrder;

  String? title;

  String? type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SchemaProperty &&
        other.conditions == conditions &&
        other.default_ == default_ &&
        other.description == description &&
        DeepCollectionEquality.unordered().equals(enum_, other.enum_) &&
        other.format == format &&
        other.id == id &&
        other.items == items &&
        other.maxItems == maxItems &&
        other.minItems == minItems &&
        other.propertyOrder == propertyOrder &&
        other.title == title &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (conditions == null ? 0 : conditions.hashCode) +
      (default_ == null ? 0 : default_.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (enum_ == null ? 0 : enum_.hashCode) +
      (format == null ? 0 : format.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (items == null ? 0 : items.hashCode) +
      (maxItems == null ? 0 : maxItems.hashCode) +
      (minItems == null ? 0 : minItems.hashCode) +
      (propertyOrder == null ? 0 : propertyOrder.hashCode) +
      (title == null ? 0 : title.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<SchemaProperty> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <SchemaProperty>[];
    }

    return json.fold(<SchemaProperty>[],
        (List<SchemaProperty> previousValue, element) {
      final SchemaProperty? object = SchemaProperty.fromJson(element);
      if (object is SchemaProperty) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, SchemaProperty> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SchemaProperty>{};
    }

    return json.entries.fold(<String, SchemaProperty>{},
        (Map<String, SchemaProperty> previousValue, element) {
      final SchemaProperty? object = SchemaProperty.fromJson(element.value);
      if (object is SchemaProperty) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of SchemaProperty-objects as value to a dart map
  static Map<String, List<SchemaProperty>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<SchemaProperty>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<SchemaProperty>>(
          key, SchemaProperty.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'SchemaProperty[conditions=$conditions, default_=$default_, description=$description, enum_=$enum_, format=$format, id=$id, items=$items, maxItems=$maxItems, minItems=$minItems, propertyOrder=$propertyOrder, title=$title, type=$type]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && conditions != null) ||
          (keys?.contains(r'conditions') ?? false))
        r'conditions': conditions?.toJson(),
      if ((keys == null && default_ != null) ||
          (keys?.contains(r'default_') ?? false))
        r'default': default_,
      if ((keys == null && description != null) ||
          (keys?.contains(r'description') ?? false))
        r'description': description,
      if ((keys == null && enum_ != null) ||
          (keys?.contains(r'enum_') ?? false))
        r'enum': enum_,
      if ((keys == null && format != null) ||
          (keys?.contains(r'format') ?? false))
        r'format': format,
      if ((keys == null && id != null) || (keys?.contains(r'id') ?? false))
        r'id': id,
      if ((keys == null && items != null) ||
          (keys?.contains(r'items') ?? false))
        r'items': items?.toJson(),
      if ((keys == null && maxItems != null) ||
          (keys?.contains(r'maxItems') ?? false))
        r'maxItems': maxItems,
      if ((keys == null && minItems != null) ||
          (keys?.contains(r'minItems') ?? false))
        r'minItems': minItems,
      if ((keys == null && propertyOrder != null) ||
          (keys?.contains(r'propertyOrder') ?? false))
        r'propertyOrder': propertyOrder,
      if ((keys == null && title != null) ||
          (keys?.contains(r'title') ?? false))
        r'title': title,
      if ((keys == null && type != null) || (keys?.contains(r'type') ?? false))
        r'type': type,
    };
  }
}
