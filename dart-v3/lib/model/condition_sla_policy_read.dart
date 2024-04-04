//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ConditionSlaPolicyRead {
  /// Returns a new [ConditionSlaPolicyRead] instance.
  ConditionSlaPolicyRead({
    required this.propertyPath,
    this.values = const {},
    this.operator_,
  });

  /// Returns a new [ConditionSlaPolicyRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ConditionSlaPolicyRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ConditionSlaPolicyRead(
      propertyPath: json[r'propertyPath'],
      values: Map<String, String>.from(json[r'values']),
      operator_:
          ConditionSlaPolicyReadOperator_Enum.fromJson(json[r'operator']),
    );
  }

  String propertyPath;

  Map<String, String> values;

  ConditionSlaPolicyReadOperator_Enum? operator_;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ConditionSlaPolicyRead &&
        other.propertyPath == propertyPath &&
        DeepCollectionEquality.unordered().equals(values, other.values) &&
        other.operator_ == operator_;
  }

  @override
  int get hashCode =>
      propertyPath.hashCode +
      values.hashCode +
      (operator_ == null ? 0 : operator_.hashCode);

  static List<ConditionSlaPolicyRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ConditionSlaPolicyRead>[];
    }

    return json.fold(<ConditionSlaPolicyRead>[],
        (List<ConditionSlaPolicyRead> previousValue, element) {
      final ConditionSlaPolicyRead? object =
          ConditionSlaPolicyRead.fromJson(element);
      if (object is ConditionSlaPolicyRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ConditionSlaPolicyRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ConditionSlaPolicyRead>{};
    }

    return json.entries.fold(<String, ConditionSlaPolicyRead>{},
        (Map<String, ConditionSlaPolicyRead> previousValue, element) {
      final ConditionSlaPolicyRead? object =
          ConditionSlaPolicyRead.fromJson(element.value);
      if (object is ConditionSlaPolicyRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ConditionSlaPolicyRead-objects as value to a dart map
  static Map<String, List<ConditionSlaPolicyRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ConditionSlaPolicyRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ConditionSlaPolicyRead>>(
          key, ConditionSlaPolicyRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ConditionSlaPolicyRead[propertyPath=$propertyPath, values=$values, operator_=$operator_]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'propertyPath': propertyPath,
      r'values': values,
      if (keys == null || keys.contains(r'operator_')) r'operator': operator_,
    };
  }
}

class ConditionSlaPolicyReadOperator_Enum {
  /// Instantiate a new enum with the provided [value].
  const ConditionSlaPolicyReadOperator_Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const eq = ConditionSlaPolicyReadOperator_Enum._(r'eq');
  static const in_ = ConditionSlaPolicyReadOperator_Enum._(r'in');
  static const notIn = ConditionSlaPolicyReadOperator_Enum._(r'not_in');

  /// List of all possible values in this [enum][ConditionSlaPolicyReadOperator_Enum].
  static const values = <ConditionSlaPolicyReadOperator_Enum>[
    eq,
    in_,
    notIn,
  ];

  static ConditionSlaPolicyReadOperator_Enum? fromJson(dynamic value) =>
      ConditionSlaPolicyReadOperator_EnumTypeTransformer().decode(value);

  static List<ConditionSlaPolicyReadOperator_Enum> listFromJson(
      List<dynamic> json) {
    return json
        .map((value) {
          return ConditionSlaPolicyReadOperator_Enum.fromJson(value);
        })
        .whereType<ConditionSlaPolicyReadOperator_Enum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [ConditionSlaPolicyReadOperator_Enum] to String,
/// and [decode] dynamic data back to [ConditionSlaPolicyReadOperator_Enum].
class ConditionSlaPolicyReadOperator_EnumTypeTransformer {
  const ConditionSlaPolicyReadOperator_EnumTypeTransformer._();

  factory ConditionSlaPolicyReadOperator_EnumTypeTransformer() =>
      _instance ??= ConditionSlaPolicyReadOperator_EnumTypeTransformer._();

  String encode(ConditionSlaPolicyReadOperator_Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConditionSlaPolicyReadOperator_Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConditionSlaPolicyReadOperator_Enum? decode(dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'eq':
        return ConditionSlaPolicyReadOperator_Enum.eq;
      case r'in':
        return ConditionSlaPolicyReadOperator_Enum.in_;
      case r'not_in':
        return ConditionSlaPolicyReadOperator_Enum.notIn;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ConditionSlaPolicyReadOperator_EnumTypeTransformer] instance.
  static ConditionSlaPolicyReadOperator_EnumTypeTransformer? _instance;
}
