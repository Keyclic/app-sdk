//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ConditionJsonhalSlaPolicyRead {
  /// Returns a new [ConditionJsonhalSlaPolicyRead] instance.
  ConditionJsonhalSlaPolicyRead({
    this.links,
    required this.propertyPath,
    this.values = const {},
    this.operator_,
  });

  /// Returns a new [ConditionJsonhalSlaPolicyRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ConditionJsonhalSlaPolicyRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ConditionJsonhalSlaPolicyRead(
      links: AssetTypeJsonhalReadLinks.fromJson(json[r'_links']),
      propertyPath: json[r'propertyPath'],
      values: Map<String, String>.from(json[r'values']),
      operator_: ConditionJsonhalSlaPolicyReadOperator_Enum.fromJson(
          json[r'operator']),
    );
  }

  AssetTypeJsonhalReadLinks? links;

  String propertyPath;

  Map<String, String> values;

  ConditionJsonhalSlaPolicyReadOperator_Enum? operator_;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ConditionJsonhalSlaPolicyRead &&
        other.links == links &&
        other.propertyPath == propertyPath &&
        DeepCollectionEquality.unordered().equals(values, other.values) &&
        other.operator_ == operator_;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      propertyPath.hashCode +
      values.hashCode +
      (operator_ == null ? 0 : operator_.hashCode);

  static List<ConditionJsonhalSlaPolicyRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <ConditionJsonhalSlaPolicyRead>[];
    }

    return json.fold(<ConditionJsonhalSlaPolicyRead>[],
        (List<ConditionJsonhalSlaPolicyRead> previousValue, element) {
      final ConditionJsonhalSlaPolicyRead? object =
          ConditionJsonhalSlaPolicyRead.fromJson(element);
      if (object is ConditionJsonhalSlaPolicyRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ConditionJsonhalSlaPolicyRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ConditionJsonhalSlaPolicyRead>{};
    }

    return json.entries.fold(<String, ConditionJsonhalSlaPolicyRead>{},
        (Map<String, ConditionJsonhalSlaPolicyRead> previousValue, element) {
      final ConditionJsonhalSlaPolicyRead? object =
          ConditionJsonhalSlaPolicyRead.fromJson(element.value);
      if (object is ConditionJsonhalSlaPolicyRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ConditionJsonhalSlaPolicyRead-objects as value to a dart map
  static Map<String, List<ConditionJsonhalSlaPolicyRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ConditionJsonhalSlaPolicyRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ConditionJsonhalSlaPolicyRead>>(
          key, ConditionJsonhalSlaPolicyRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ConditionJsonhalSlaPolicyRead[links=$links, propertyPath=$propertyPath, values=$values, operator_=$operator_]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
      r'propertyPath': propertyPath,
      r'values': values,
      if (keys == null || keys.contains(r'operator_')) r'operator': operator_,
    };
  }
}

class ConditionJsonhalSlaPolicyReadOperator_Enum {
  /// Instantiate a new enum with the provided [value].
  const ConditionJsonhalSlaPolicyReadOperator_Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const eq = ConditionJsonhalSlaPolicyReadOperator_Enum._(r'eq');
  static const in_ = ConditionJsonhalSlaPolicyReadOperator_Enum._(r'in');
  static const notIn = ConditionJsonhalSlaPolicyReadOperator_Enum._(r'not_in');

  /// List of all possible values in this [enum][ConditionJsonhalSlaPolicyReadOperator_Enum].
  static const values = <ConditionJsonhalSlaPolicyReadOperator_Enum>[
    eq,
    in_,
    notIn,
  ];

  static ConditionJsonhalSlaPolicyReadOperator_Enum? fromJson(dynamic value) =>
      ConditionJsonhalSlaPolicyReadOperator_EnumTypeTransformer().decode(value);

  static List<ConditionJsonhalSlaPolicyReadOperator_Enum> listFromJson(
      List<dynamic> json) {
    return json
        .map((value) {
          return ConditionJsonhalSlaPolicyReadOperator_Enum.fromJson(value);
        })
        .whereType<ConditionJsonhalSlaPolicyReadOperator_Enum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [ConditionJsonhalSlaPolicyReadOperator_Enum] to String,
/// and [decode] dynamic data back to [ConditionJsonhalSlaPolicyReadOperator_Enum].
class ConditionJsonhalSlaPolicyReadOperator_EnumTypeTransformer {
  const ConditionJsonhalSlaPolicyReadOperator_EnumTypeTransformer._();

  factory ConditionJsonhalSlaPolicyReadOperator_EnumTypeTransformer() =>
      _instance ??=
          ConditionJsonhalSlaPolicyReadOperator_EnumTypeTransformer._();

  String encode(ConditionJsonhalSlaPolicyReadOperator_Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConditionJsonhalSlaPolicyReadOperator_Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConditionJsonhalSlaPolicyReadOperator_Enum? decode(dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'eq':
        return ConditionJsonhalSlaPolicyReadOperator_Enum.eq;
      case r'in':
        return ConditionJsonhalSlaPolicyReadOperator_Enum.in_;
      case r'not_in':
        return ConditionJsonhalSlaPolicyReadOperator_Enum.notIn;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ConditionJsonhalSlaPolicyReadOperator_EnumTypeTransformer] instance.
  static ConditionJsonhalSlaPolicyReadOperator_EnumTypeTransformer? _instance;
}
