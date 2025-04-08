//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PreferencesForm {
  /// Returns a new [PreferencesForm] instance.
  PreferencesForm({
    this.categorySelectionStrategy,
    this.contract,
    this.hidden,
    this.manualDispatch,
    this.required_,
  });

  /// Returns a new [PreferencesForm] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PreferencesForm? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PreferencesForm(
      categorySelectionStrategy:
          PreferencesFormCategorySelectionStrategyEnum.fromJson(
              json[r'categorySelectionStrategy']),
      contract: json[r'contract'],
      hidden:
          json[r'hidden'] == null ? null : List<String>.from(json[r'hidden']),
      manualDispatch: json[r'manualDispatch'],
      required_: json[r'required'] == null
          ? null
          : List<String>.from(json[r'required']),
    );
  }

  PreferencesFormCategorySelectionStrategyEnum? categorySelectionStrategy;

  bool? contract;

  List<String>? hidden;

  bool? manualDispatch;

  List<String>? required_;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PreferencesForm &&
        other.categorySelectionStrategy == categorySelectionStrategy &&
        other.contract == contract &&
        DeepCollectionEquality.unordered().equals(hidden, other.hidden) &&
        other.manualDispatch == manualDispatch &&
        DeepCollectionEquality.unordered().equals(required_, other.required_);
  }

  @override
  int get hashCode =>
      (categorySelectionStrategy == null
          ? 0
          : categorySelectionStrategy.hashCode) +
      (contract == null ? 0 : contract.hashCode) +
      (hidden == null ? 0 : hidden.hashCode) +
      (manualDispatch == null ? 0 : manualDispatch.hashCode) +
      (required_ == null ? 0 : required_.hashCode);

  static List<PreferencesForm> listFromJson(Iterable? json) {
    if (json == null) {
      return <PreferencesForm>[];
    }

    return json.fold(<PreferencesForm>[],
        (List<PreferencesForm> previousValue, element) {
      final PreferencesForm? object = PreferencesForm.fromJson(element);
      if (object is PreferencesForm) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PreferencesForm> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PreferencesForm>{};
    }

    return json.entries.fold(<String, PreferencesForm>{},
        (Map<String, PreferencesForm> previousValue, element) {
      final PreferencesForm? object = PreferencesForm.fromJson(element.value);
      if (object is PreferencesForm) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PreferencesForm-objects as value to a dart map
  static Map<String, List<PreferencesForm>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PreferencesForm>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PreferencesForm>>(
          key, PreferencesForm.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PreferencesForm[categorySelectionStrategy=$categorySelectionStrategy, contract=$contract, hidden=$hidden, manualDispatch=$manualDispatch, required_=$required_]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'categorySelectionStrategy'))
        r'categorySelectionStrategy': categorySelectionStrategy,
      if (keys == null || keys.contains(r'contract')) r'contract': contract,
      if (keys == null || keys.contains(r'hidden')) r'hidden': hidden,
      if (keys == null || keys.contains(r'manualDispatch'))
        r'manualDispatch': manualDispatch,
      if (keys == null || keys.contains(r'required_')) r'required': required_,
    };
  }
}

class PreferencesFormCategorySelectionStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const PreferencesFormCategorySelectionStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const dispatcherBased =
      PreferencesFormCategorySelectionStrategyEnum._(r'dispatcher_based');

  /// List of all possible values in this [enum][PreferencesFormCategorySelectionStrategyEnum].
  static const values = <PreferencesFormCategorySelectionStrategyEnum>[
    dispatcherBased,
  ];

  static PreferencesFormCategorySelectionStrategyEnum? fromJson(
          dynamic value) =>
      PreferencesFormCategorySelectionStrategyEnumTypeTransformer()
          .decode(value);

  static List<PreferencesFormCategorySelectionStrategyEnum> listFromJson(
      List<dynamic> json) {
    return json
        .map((value) {
          return PreferencesFormCategorySelectionStrategyEnum.fromJson(value);
        })
        .whereType<PreferencesFormCategorySelectionStrategyEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [PreferencesFormCategorySelectionStrategyEnum] to String,
/// and [decode] dynamic data back to [PreferencesFormCategorySelectionStrategyEnum].
class PreferencesFormCategorySelectionStrategyEnumTypeTransformer {
  const PreferencesFormCategorySelectionStrategyEnumTypeTransformer._();

  factory PreferencesFormCategorySelectionStrategyEnumTypeTransformer() =>
      _instance ??=
          PreferencesFormCategorySelectionStrategyEnumTypeTransformer._();

  String encode(PreferencesFormCategorySelectionStrategyEnum data) =>
      data.value;

  /// Decodes a [dynamic value][data] to a PreferencesFormCategorySelectionStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PreferencesFormCategorySelectionStrategyEnum? decode(dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'dispatcher_based':
        return PreferencesFormCategorySelectionStrategyEnum.dispatcherBased;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [PreferencesFormCategorySelectionStrategyEnumTypeTransformer] instance.
  static PreferencesFormCategorySelectionStrategyEnumTypeTransformer? _instance;
}
