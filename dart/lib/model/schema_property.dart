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
    this.enum_ = const [],
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
      conditions: PropertyConditionList.fromJson(json[r'conditions']),
      default_: json[r'default'],
      description: json[r'description'],
      enum_: json[r'enum'] == null ? null : List<String>.from(json[r'enum']),
      format: json[r'format'],
      id: json[r'id'],
      items: PropertyItems.fromJson(json[r'items']),
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

  static List<SchemaProperty> listFromJson(List<dynamic>? json) {
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

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (conditions != null) r'conditions': conditions,
      if (default_ != null) r'default': default_,
      if (description != null) r'description': description,
      if (enum_ != null) r'enum': enum_,
      if (format != null) r'format': format,
      if (id != null) r'id': id,
      if (items != null) r'items': items,
      if (maxItems != null) r'maxItems': maxItems,
      if (minItems != null) r'minItems': minItems,
      if (propertyOrder != null) r'propertyOrder': propertyOrder,
      if (title != null) r'title': title,
      if (type != null) r'type': type,
    };
  }
}
