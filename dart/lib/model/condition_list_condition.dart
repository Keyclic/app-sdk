//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ConditionListCondition {
  /// Returns a new [ConditionListCondition] instance.
  ConditionListCondition({
    this.id,
    this.operator_,
    this.path,
    this.type,
    this.value,
  });

  /// Returns a new [ConditionListCondition] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ConditionListCondition? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ConditionListCondition(
      id: json[r'id'],
      operator_: json[r'operator'],
      path: json[r'path'],
      type: json[r'type'],
      value: json[r'value'] == null ? null : List<String>.from(json[r'value']),
    );
  }

  final String? id;

  String? operator_;

  String? path;

  String? type;

  List<String>? value;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ConditionListCondition &&
        other.id == id &&
        other.operator_ == operator_ &&
        other.path == path &&
        other.type == type &&
        DeepCollectionEquality.unordered().equals(value, other.value);
  }

  @override
  int get hashCode =>
      (id == null ? 0 : id.hashCode) +
      (operator_ == null ? 0 : operator_.hashCode) +
      (path == null ? 0 : path.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (value == null ? 0 : value.hashCode);

  static List<ConditionListCondition> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ConditionListCondition>[];
    }

    return json.fold(<ConditionListCondition>[],
        (List<ConditionListCondition> previousValue, element) {
      final ConditionListCondition? object =
          ConditionListCondition.fromJson(element);
      if (object is ConditionListCondition) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ConditionListCondition> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ConditionListCondition>{};
    }

    return json.entries.fold(<String, ConditionListCondition>{},
        (Map<String, ConditionListCondition> previousValue, element) {
      final ConditionListCondition? object =
          ConditionListCondition.fromJson(element.value);
      if (object is ConditionListCondition) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ConditionListCondition-objects as value to a dart map
  static Map<String, List<ConditionListCondition>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ConditionListCondition>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ConditionListCondition>>(
          key, ConditionListCondition.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ConditionListCondition[id=$id, operator_=$operator_, path=$path, type=$type, value=$value]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'operator_')) r'operator': operator_,
      if (keys == null || keys.contains(r'path')) r'path': path,
      if (keys == null || keys.contains(r'type')) r'type': type,
      if (keys == null || keys.contains(r'value')) r'value': value,
    };
  }
}
