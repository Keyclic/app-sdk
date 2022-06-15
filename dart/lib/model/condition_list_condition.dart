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
    this.value = const [],
  });

  /// Returns a new [ConditionListCondition] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ConditionListCondition? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ConditionListCondition(
      id: json[r'id'],
      operator_: json[r'operator'],
      path: json[r'path'],
      type: json[r'type'],
      value: List<String>.from(json[r'value'] ?? []),
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
    return json
        .map((value) {
          return ConditionListCondition.fromJson(value);
        })
        .whereType<ConditionListCondition>()
        .toList();
  }

  static Map<String, ConditionListCondition> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ConditionListCondition>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ConditionListCondition?>(
            key, ConditionListCondition.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ConditionListCondition>;
  }

  // maps a json object with a list of ConditionListCondition-objects as value to a dart map
  static Map<String, List<ConditionListCondition>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ConditionListCondition>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ConditionListCondition.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ConditionListCondition[id=$id, operator_=$operator_, path=$path, type=$type, value=$value]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) r'id': id,
      if (operator_ != null) r'operator': operator_,
      if (path != null) r'path': path,
      if (type != null) r'type': type,
      if (value != null) r'value': value,
    };
  }
}
