//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ProcedureData {
  /// Returns a new [ProcedureData] instance.
  ProcedureData({
    required this.document,
    this.mode,
    required this.type,
  });

  /// Returns a new [ProcedureData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ProcedureData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ProcedureData(
      document: json[r'document'],
      mode: ProcedureDataModeEnum.fromJson(json[r'mode']),
      type: ProcedureDataTypeEnum.fromJson(json[r'type'])!,
    );
  }

  String document;

  ProcedureDataModeEnum? mode;

  ProcedureDataTypeEnum type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ProcedureData &&
        other.document == document &&
        other.mode == mode &&
        other.type == type;
  }

  @override
  int get hashCode =>
      document.hashCode + (mode == null ? 0 : mode.hashCode) + type.hashCode;

  static List<ProcedureData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ProcedureData>[];
    }
    return json
        .map((value) {
          return ProcedureData.fromJson(value);
        })
        .whereType<ProcedureData>()
        .toList();
  }

  static Map<String, ProcedureData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ProcedureData>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ProcedureData?>(key, ProcedureData.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ProcedureData>;
  }

  // maps a json object with a list of ProcedureData-objects as value to a dart map
  static Map<String, List<ProcedureData>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ProcedureData>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ProcedureData.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ProcedureData[document=$document, mode=$mode, type=$type]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'document': document,
      if (mode != null) r'mode': mode,
      r'type': type,
    };
  }
}

class ProcedureDataModeEnum {
  /// Instantiate a new enum with the provided [value].
  const ProcedureDataModeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const remote = ProcedureDataModeEnum._(r'remote');
  static const onSite = ProcedureDataModeEnum._(r'on_site');

  /// List of all possible values in this [enum][ProcedureDataModeEnum].
  static const values = <ProcedureDataModeEnum>[
    remote,
    onSite,
  ];

  static ProcedureDataModeEnum? fromJson(dynamic value) =>
      ProcedureDataModeEnumTypeTransformer().decode(value);

  static List<ProcedureDataModeEnum> listFromJson(List<dynamic> json) {
    return json
        .map((value) {
          return ProcedureDataModeEnum.fromJson(value);
        })
        .whereType<ProcedureDataModeEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [ProcedureDataModeEnum] to String,
/// and [decode] dynamic data back to [ProcedureDataModeEnum].
class ProcedureDataModeEnumTypeTransformer {
  const ProcedureDataModeEnumTypeTransformer._();

  factory ProcedureDataModeEnumTypeTransformer() =>
      _instance ??= ProcedureDataModeEnumTypeTransformer._();

  String encode(ProcedureDataModeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProcedureDataModeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProcedureDataModeEnum? decode(dynamic data, {bool allowNull = true}) {
    switch (data) {
      case r'remote':
        return ProcedureDataModeEnum.remote;
      case r'on_site':
        return ProcedureDataModeEnum.onSite;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ProcedureDataModeEnumTypeTransformer] instance.
  static ProcedureDataModeEnumTypeTransformer? _instance;
}

class ProcedureDataTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ProcedureDataTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const eSignature = ProcedureDataTypeEnum._(r'e-signature');
  static const signature = ProcedureDataTypeEnum._(r'signature');

  /// List of all possible values in this [enum][ProcedureDataTypeEnum].
  static const values = <ProcedureDataTypeEnum>[
    eSignature,
    signature,
  ];

  static ProcedureDataTypeEnum? fromJson(dynamic value) =>
      ProcedureDataTypeEnumTypeTransformer().decode(value);

  static List<ProcedureDataTypeEnum> listFromJson(List<dynamic> json) {
    return json
        .map((value) {
          return ProcedureDataTypeEnum.fromJson(value);
        })
        .whereType<ProcedureDataTypeEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [ProcedureDataTypeEnum] to String,
/// and [decode] dynamic data back to [ProcedureDataTypeEnum].
class ProcedureDataTypeEnumTypeTransformer {
  const ProcedureDataTypeEnumTypeTransformer._();

  factory ProcedureDataTypeEnumTypeTransformer() =>
      _instance ??= ProcedureDataTypeEnumTypeTransformer._();

  String encode(ProcedureDataTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProcedureDataTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProcedureDataTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    switch (data) {
      case r'e-signature':
        return ProcedureDataTypeEnum.eSignature;
      case r'signature':
        return ProcedureDataTypeEnum.signature;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ProcedureDataTypeEnumTypeTransformer] instance.
  static ProcedureDataTypeEnumTypeTransformer? _instance;
}
