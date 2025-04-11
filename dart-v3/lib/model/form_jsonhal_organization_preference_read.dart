//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class FormJsonhalOrganizationPreferenceRead {
  /// Returns a new [FormJsonhalOrganizationPreferenceRead] instance.
  FormJsonhalOrganizationPreferenceRead({
    this.categorySelectionStrategy,
    this.contract,
    this.hidden,
    this.manualDispatch,
    this.required_,
  });

  /// Returns a new [FormJsonhalOrganizationPreferenceRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FormJsonhalOrganizationPreferenceRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return FormJsonhalOrganizationPreferenceRead(
      categorySelectionStrategy:
          FormJsonhalOrganizationPreferenceReadCategorySelectionStrategyEnum
              .fromJson(json[r'categorySelectionStrategy']),
      contract: json[r'contract'],
      hidden:
          json[r'hidden'] == null ? null : List<String>.from(json[r'hidden']),
      manualDispatch: json[r'manualDispatch'],
      required_: json[r'required'] == null
          ? null
          : List<String>.from(json[r'required']),
    );
  }

  /// The selection strategy applied for filtering categories.
  FormJsonhalOrganizationPreferenceReadCategorySelectionStrategyEnum?
      categorySelectionStrategy;

  /// Allow authorized user to provide a contract on feedback form.
  bool? contract;

  List<String>? hidden;

  /// Allow authorized user to provide a service to dispatch to on feedback form.
  bool? manualDispatch;

  List<String>? required_;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FormJsonhalOrganizationPreferenceRead &&
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

  static List<FormJsonhalOrganizationPreferenceRead> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <FormJsonhalOrganizationPreferenceRead>[];
    }

    return json.fold(<FormJsonhalOrganizationPreferenceRead>[],
        (List<FormJsonhalOrganizationPreferenceRead> previousValue, element) {
      final FormJsonhalOrganizationPreferenceRead? object =
          FormJsonhalOrganizationPreferenceRead.fromJson(element);
      if (object is FormJsonhalOrganizationPreferenceRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FormJsonhalOrganizationPreferenceRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FormJsonhalOrganizationPreferenceRead>{};
    }

    return json.entries.fold(<String, FormJsonhalOrganizationPreferenceRead>{},
        (Map<String, FormJsonhalOrganizationPreferenceRead> previousValue,
            element) {
      final FormJsonhalOrganizationPreferenceRead? object =
          FormJsonhalOrganizationPreferenceRead.fromJson(element.value);
      if (object is FormJsonhalOrganizationPreferenceRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FormJsonhalOrganizationPreferenceRead-objects as value to a dart map
  static Map<String, List<FormJsonhalOrganizationPreferenceRead>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FormJsonhalOrganizationPreferenceRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FormJsonhalOrganizationPreferenceRead>>(
          key, FormJsonhalOrganizationPreferenceRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'FormJsonhalOrganizationPreferenceRead[categorySelectionStrategy=$categorySelectionStrategy, contract=$contract, hidden=$hidden, manualDispatch=$manualDispatch, required_=$required_]';

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

/// The selection strategy applied for filtering categories.
class FormJsonhalOrganizationPreferenceReadCategorySelectionStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const FormJsonhalOrganizationPreferenceReadCategorySelectionStrategyEnum._(
      this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const dispatcherBased =
      FormJsonhalOrganizationPreferenceReadCategorySelectionStrategyEnum._(
          r'dispatcher_based');

  /// List of all possible values in this [enum][FormJsonhalOrganizationPreferenceReadCategorySelectionStrategyEnum].
  static const values =
      <FormJsonhalOrganizationPreferenceReadCategorySelectionStrategyEnum>[
    dispatcherBased,
  ];

  static FormJsonhalOrganizationPreferenceReadCategorySelectionStrategyEnum?
      fromJson(dynamic value) =>
          FormJsonhalOrganizationPreferenceReadCategorySelectionStrategyEnumTypeTransformer()
              .decode(value);

  static List<
          FormJsonhalOrganizationPreferenceReadCategorySelectionStrategyEnum>
      listFromJson(List<dynamic> json) {
    return json
        .map((value) {
          return FormJsonhalOrganizationPreferenceReadCategorySelectionStrategyEnum
              .fromJson(value);
        })
        .whereType<
            FormJsonhalOrganizationPreferenceReadCategorySelectionStrategyEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [FormJsonhalOrganizationPreferenceReadCategorySelectionStrategyEnum] to String,
/// and [decode] dynamic data back to [FormJsonhalOrganizationPreferenceReadCategorySelectionStrategyEnum].
class FormJsonhalOrganizationPreferenceReadCategorySelectionStrategyEnumTypeTransformer {
  const FormJsonhalOrganizationPreferenceReadCategorySelectionStrategyEnumTypeTransformer._();

  factory FormJsonhalOrganizationPreferenceReadCategorySelectionStrategyEnumTypeTransformer() =>
      _instance ??=
          FormJsonhalOrganizationPreferenceReadCategorySelectionStrategyEnumTypeTransformer
              ._();

  String encode(
          FormJsonhalOrganizationPreferenceReadCategorySelectionStrategyEnum
              data) =>
      data.value;

  /// Decodes a [dynamic value][data] to a FormJsonhalOrganizationPreferenceReadCategorySelectionStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FormJsonhalOrganizationPreferenceReadCategorySelectionStrategyEnum? decode(
      dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'dispatcher_based':
        return FormJsonhalOrganizationPreferenceReadCategorySelectionStrategyEnum
            .dispatcherBased;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [FormJsonhalOrganizationPreferenceReadCategorySelectionStrategyEnumTypeTransformer] instance.
  static FormJsonhalOrganizationPreferenceReadCategorySelectionStrategyEnumTypeTransformer?
      _instance;
}
