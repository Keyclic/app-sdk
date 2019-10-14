part of keyclic_sdk_api.api;

class PropertyItems {
  PropertyItems({
    this.oneOf,
  });

  PropertyItems.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    oneOf = Choice.listFromJson(json['oneOf']);
  }

  List<Choice> oneOf;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PropertyItems &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(oneOf, other.oneOf);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (oneOf is List && oneOf.isNotEmpty) {
      hashCode ^= oneOf
          .map((Choice element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<PropertyItems> listFromJson(List<dynamic> json) {
    return json == null
        ? <PropertyItems>[]
        : json.map((dynamic value) => PropertyItems.fromJson(value)).toList();
  }

  static Map<String, PropertyItems> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PropertyItems>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PropertyItems.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (oneOf != null) 'oneOf': oneOf,
    };
  }

  @override
  String toString() {
    return 'PropertyItems[oneOf=$oneOf, ]';
  }
}
