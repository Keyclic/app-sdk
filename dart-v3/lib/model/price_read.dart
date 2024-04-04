//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PriceRead {
  /// Returns a new [PriceRead] instance.
  PriceRead({
    this.currencyCode,
    this.value,
  });

  /// Returns a new [PriceRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PriceRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PriceRead(
      currencyCode: PriceReadCurrencyCodeEnum.fromJson(json[r'currencyCode']),
      value: json[r'value'] == null ? null : json[r'value'].toDouble(),
    );
  }

  /// The currency code, in ISO 4217 format.
  final PriceReadCurrencyCodeEnum? currencyCode;

  // minimum: 0
  num? value;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PriceRead &&
        other.currencyCode == currencyCode &&
        other.value == value;
  }

  @override
  int get hashCode =>
      (currencyCode == null ? 0 : currencyCode.hashCode) +
      (value == null ? 0 : value.hashCode);

  static List<PriceRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PriceRead>[];
    }

    return json.fold(<PriceRead>[], (List<PriceRead> previousValue, element) {
      final PriceRead? object = PriceRead.fromJson(element);
      if (object is PriceRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PriceRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PriceRead>{};
    }

    return json.entries.fold(<String, PriceRead>{},
        (Map<String, PriceRead> previousValue, element) {
      final PriceRead? object = PriceRead.fromJson(element.value);
      if (object is PriceRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PriceRead-objects as value to a dart map
  static Map<String, List<PriceRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PriceRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PriceRead>>(
          key, PriceRead.listFromJson(value));
    });
  }

  @override
  String toString() => 'PriceRead[currencyCode=$currencyCode, value=$value]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'currencyCode'))
        r'currencyCode': currencyCode,
      if (keys == null || keys.contains(r'value')) r'value': value,
    };
  }
}

/// The currency code, in ISO 4217 format.
class PriceReadCurrencyCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const PriceReadCurrencyCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EUR = PriceReadCurrencyCodeEnum._(r'EUR');

  /// List of all possible values in this [enum][PriceReadCurrencyCodeEnum].
  static const values = <PriceReadCurrencyCodeEnum>[
    EUR,
  ];

  static PriceReadCurrencyCodeEnum? fromJson(dynamic value) =>
      PriceReadCurrencyCodeEnumTypeTransformer().decode(value);

  static List<PriceReadCurrencyCodeEnum> listFromJson(List<dynamic> json) {
    return json
        .map((value) {
          return PriceReadCurrencyCodeEnum.fromJson(value);
        })
        .whereType<PriceReadCurrencyCodeEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [PriceReadCurrencyCodeEnum] to String,
/// and [decode] dynamic data back to [PriceReadCurrencyCodeEnum].
class PriceReadCurrencyCodeEnumTypeTransformer {
  const PriceReadCurrencyCodeEnumTypeTransformer._();

  factory PriceReadCurrencyCodeEnumTypeTransformer() =>
      _instance ??= PriceReadCurrencyCodeEnumTypeTransformer._();

  String encode(PriceReadCurrencyCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PriceReadCurrencyCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PriceReadCurrencyCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    switch (data) {
      case r'EUR':
        return PriceReadCurrencyCodeEnum.EUR;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [PriceReadCurrencyCodeEnumTypeTransformer] instance.
  static PriceReadCurrencyCodeEnumTypeTransformer? _instance;
}
