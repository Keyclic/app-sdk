//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PriceJsonhalRead {
  /// Returns a new [PriceJsonhalRead] instance.
  PriceJsonhalRead({
    this.links,
    this.currencyCode = const PriceJsonhalReadCurrencyCodeEnum._('EUR'),
    this.value,
  });

  /// Returns a new [PriceJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PriceJsonhalRead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PriceJsonhalRead(
      links: json[r'_links'] is! Map
          ? null
          : AssetTypeJsonhalReadLinks.fromJson(json[r'_links']),
      currencyCode:
          PriceJsonhalReadCurrencyCodeEnum.fromJson(json[r'currencyCode']),
      value: json[r'value'] == null ? null : json[r'value'].toDouble(),
    );
  }

  AssetTypeJsonhalReadLinks? links;

  /// The currency code, in ISO 4217 format.
  final PriceJsonhalReadCurrencyCodeEnum? currencyCode;

  // minimum: 0
  num? value;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PriceJsonhalRead &&
        other.links == links &&
        other.currencyCode == currencyCode &&
        other.value == value;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (currencyCode == null ? 0 : currencyCode.hashCode) +
      (value == null ? 0 : value.hashCode);

  static List<PriceJsonhalRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PriceJsonhalRead>[];
    }

    return json.fold(<PriceJsonhalRead>[],
        (List<PriceJsonhalRead> previousValue, element) {
      final PriceJsonhalRead? object = PriceJsonhalRead.fromJson(element);
      if (object is PriceJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PriceJsonhalRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PriceJsonhalRead>{};
    }

    return json.entries.fold(<String, PriceJsonhalRead>{},
        (Map<String, PriceJsonhalRead> previousValue, element) {
      final PriceJsonhalRead? object = PriceJsonhalRead.fromJson(element.value);
      if (object is PriceJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PriceJsonhalRead-objects as value to a dart map
  static Map<String, List<PriceJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PriceJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PriceJsonhalRead>>(
          key, PriceJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PriceJsonhalRead[links=$links, currencyCode=$currencyCode, value=$value]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && links != null) ||
          (keys?.contains(r'links') ?? false))
        r'_links': links?.toJson(),
      if ((keys == null && currencyCode != null) ||
          (keys?.contains(r'currencyCode') ?? false))
        r'currencyCode': currencyCode,
      if ((keys == null && value != null) ||
          (keys?.contains(r'value') ?? false))
        r'value': value,
    };
  }
}

/// The currency code, in ISO 4217 format.
class PriceJsonhalReadCurrencyCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const PriceJsonhalReadCurrencyCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EUR = PriceJsonhalReadCurrencyCodeEnum._(r'EUR');

  /// List of all possible values in this [enum][PriceJsonhalReadCurrencyCodeEnum].
  static const values = <PriceJsonhalReadCurrencyCodeEnum>[
    EUR,
  ];

  static PriceJsonhalReadCurrencyCodeEnum? fromJson(dynamic value) =>
      PriceJsonhalReadCurrencyCodeEnumTypeTransformer().decode(value);

  static List<PriceJsonhalReadCurrencyCodeEnum> listFromJson(
      List<dynamic> json) {
    return json
        .map((value) {
          return PriceJsonhalReadCurrencyCodeEnum.fromJson(value);
        })
        .whereType<PriceJsonhalReadCurrencyCodeEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [PriceJsonhalReadCurrencyCodeEnum] to String,
/// and [decode] dynamic data back to [PriceJsonhalReadCurrencyCodeEnum].
class PriceJsonhalReadCurrencyCodeEnumTypeTransformer {
  const PriceJsonhalReadCurrencyCodeEnumTypeTransformer._();

  factory PriceJsonhalReadCurrencyCodeEnumTypeTransformer() =>
      _instance ??= PriceJsonhalReadCurrencyCodeEnumTypeTransformer._();

  String encode(PriceJsonhalReadCurrencyCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PriceJsonhalReadCurrencyCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PriceJsonhalReadCurrencyCodeEnum? decode(dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'EUR':
        return PriceJsonhalReadCurrencyCodeEnum.EUR;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [PriceJsonhalReadCurrencyCodeEnumTypeTransformer] instance.
  static PriceJsonhalReadCurrencyCodeEnumTypeTransformer? _instance;
}
