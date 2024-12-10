//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ConditionJsonhalRead {
  /// Returns a new [ConditionJsonhalRead] instance.
  ConditionJsonhalRead({
    required this.propertyPath,
    this.values = const {},
    this.operator_,
  });

  /// Returns a new [ConditionJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ConditionJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ConditionJsonhalRead(
      propertyPath: json[r'propertyPath'],
      values: Map<String, String>.from(json[r'values']),
      operator_: ConditionJsonhalReadOperator_Enum.fromJson(json[r'operator']),
    );
  }

  String propertyPath;

  Map<String, String> values;

  ConditionJsonhalReadOperator_Enum? operator_;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ConditionJsonhalRead &&
        other.propertyPath == propertyPath &&
        DeepCollectionEquality.unordered().equals(values, other.values) &&
        other.operator_ == operator_;
  }

  @override
  int get hashCode =>
      propertyPath.hashCode +
      values.hashCode +
      (operator_ == null ? 0 : operator_.hashCode);

  static List<ConditionJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <ConditionJsonhalRead>[];
    }

    return json.fold(<ConditionJsonhalRead>[],
        (List<ConditionJsonhalRead> previousValue, element) {
      final ConditionJsonhalRead? object =
          ConditionJsonhalRead.fromJson(element);
      if (object is ConditionJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ConditionJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ConditionJsonhalRead>{};
    }

    return json.entries.fold(<String, ConditionJsonhalRead>{},
        (Map<String, ConditionJsonhalRead> previousValue, element) {
      final ConditionJsonhalRead? object =
          ConditionJsonhalRead.fromJson(element.value);
      if (object is ConditionJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ConditionJsonhalRead-objects as value to a dart map
  static Map<String, List<ConditionJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ConditionJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ConditionJsonhalRead>>(
          key, ConditionJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ConditionJsonhalRead[propertyPath=$propertyPath, values=$values, operator_=$operator_]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'propertyPath': propertyPath,
      r'values': values,
      if (keys == null || keys.contains(r'operator_')) r'operator': operator_,
    };
  }
}

class ConditionJsonhalReadOperator_Enum {
  /// Instantiate a new enum with the provided [value].
  const ConditionJsonhalReadOperator_Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const eq = ConditionJsonhalReadOperator_Enum._(r'eq');
  static const in_ = ConditionJsonhalReadOperator_Enum._(r'in');
  static const notIn = ConditionJsonhalReadOperator_Enum._(r'not_in');

  /// List of all possible values in this [enum][ConditionJsonhalReadOperator_Enum].
  static const values = <ConditionJsonhalReadOperator_Enum>[
    eq,
    in_,
    notIn,
  ];

  static ConditionJsonhalReadOperator_Enum? fromJson(dynamic value) =>
      ConditionJsonhalReadOperator_EnumTypeTransformer().decode(value);

  static List<ConditionJsonhalReadOperator_Enum> listFromJson(
      List<dynamic> json) {
    return json
        .map((value) {
          return ConditionJsonhalReadOperator_Enum.fromJson(value);
        })
        .whereType<ConditionJsonhalReadOperator_Enum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [ConditionJsonhalReadOperator_Enum] to String,
/// and [decode] dynamic data back to [ConditionJsonhalReadOperator_Enum].
class ConditionJsonhalReadOperator_EnumTypeTransformer {
  const ConditionJsonhalReadOperator_EnumTypeTransformer._();

  factory ConditionJsonhalReadOperator_EnumTypeTransformer() =>
      _instance ??= ConditionJsonhalReadOperator_EnumTypeTransformer._();

  String encode(ConditionJsonhalReadOperator_Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConditionJsonhalReadOperator_Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConditionJsonhalReadOperator_Enum? decode(dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'eq':
        return ConditionJsonhalReadOperator_Enum.eq;
      case r'in':
        return ConditionJsonhalReadOperator_Enum.in_;
      case r'not_in':
        return ConditionJsonhalReadOperator_Enum.notIn;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ConditionJsonhalReadOperator_EnumTypeTransformer] instance.
  static ConditionJsonhalReadOperator_EnumTypeTransformer? _instance;
}
