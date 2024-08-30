//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ConditionRead {
  /// Returns a new [ConditionRead] instance.
  ConditionRead({
    required this.propertyPath,
    this.values = const {},
    this.operator_,
  });

  /// Returns a new [ConditionRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ConditionRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ConditionRead(
      propertyPath: json[r'propertyPath'],
      values: Map<String, String>.from(json[r'values']),
      operator_: ConditionReadOperator_Enum.fromJson(json[r'operator']),
    );
  }

  String propertyPath;

  Map<String, String> values;

  ConditionReadOperator_Enum? operator_;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ConditionRead &&
        other.propertyPath == propertyPath &&
        DeepCollectionEquality.unordered().equals(values, other.values) &&
        other.operator_ == operator_;
  }

  @override
  int get hashCode =>
      propertyPath.hashCode +
      values.hashCode +
      (operator_ == null ? 0 : operator_.hashCode);

  static List<ConditionRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <ConditionRead>[];
    }

    return json.fold(<ConditionRead>[],
        (List<ConditionRead> previousValue, element) {
      final ConditionRead? object = ConditionRead.fromJson(element);
      if (object is ConditionRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ConditionRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ConditionRead>{};
    }

    return json.entries.fold(<String, ConditionRead>{},
        (Map<String, ConditionRead> previousValue, element) {
      final ConditionRead? object = ConditionRead.fromJson(element.value);
      if (object is ConditionRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ConditionRead-objects as value to a dart map
  static Map<String, List<ConditionRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ConditionRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ConditionRead>>(
          key, ConditionRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ConditionRead[propertyPath=$propertyPath, values=$values, operator_=$operator_]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'propertyPath': propertyPath,
      r'values': values,
      if (keys == null || keys.contains(r'operator_')) r'operator': operator_,
    };
  }
}

class ConditionReadOperator_Enum {
  /// Instantiate a new enum with the provided [value].
  const ConditionReadOperator_Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const eq = ConditionReadOperator_Enum._(r'eq');
  static const in_ = ConditionReadOperator_Enum._(r'in');
  static const notIn = ConditionReadOperator_Enum._(r'not_in');

  /// List of all possible values in this [enum][ConditionReadOperator_Enum].
  static const values = <ConditionReadOperator_Enum>[
    eq,
    in_,
    notIn,
  ];

  static ConditionReadOperator_Enum? fromJson(dynamic value) =>
      ConditionReadOperator_EnumTypeTransformer().decode(value);

  static List<ConditionReadOperator_Enum> listFromJson(List<dynamic> json) {
    return json
        .map((value) {
          return ConditionReadOperator_Enum.fromJson(value);
        })
        .whereType<ConditionReadOperator_Enum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [ConditionReadOperator_Enum] to String,
/// and [decode] dynamic data back to [ConditionReadOperator_Enum].
class ConditionReadOperator_EnumTypeTransformer {
  const ConditionReadOperator_EnumTypeTransformer._();

  factory ConditionReadOperator_EnumTypeTransformer() =>
      _instance ??= ConditionReadOperator_EnumTypeTransformer._();

  String encode(ConditionReadOperator_Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConditionReadOperator_Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConditionReadOperator_Enum? decode(dynamic data, {bool allowNull = true}) {
    switch (data) {
      case r'eq':
        return ConditionReadOperator_Enum.eq;
      case r'in':
        return ConditionReadOperator_Enum.in_;
      case r'not_in':
        return ConditionReadOperator_Enum.notIn;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ConditionReadOperator_EnumTypeTransformer] instance.
  static ConditionReadOperator_EnumTypeTransformer? _instance;
}
