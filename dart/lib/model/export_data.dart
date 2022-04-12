//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ExportData {
  /// Returns a new [ExportData] instance.
  ExportData({
    this.contentType,
    this.organization,
  });

  /// Returns a new [ExportData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ExportData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ExportData(
      contentType: ExportDataContentTypeEnum.fromJson(json[r'contentType']),
      organization: json[r'organization'],
    );
  }

  ExportDataContentTypeEnum contentType;

  String organization;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExportData &&
        other.contentType == contentType &&
        other.organization == organization;
  }

  @override
  int get hashCode =>
      (contentType == null ? 0 : contentType.hashCode) +
      (organization == null ? 0 : organization.hashCode);

  static List<ExportData> listFromJson(List<dynamic> json) {
    return <ExportData>[
      if (json is List)
        for (dynamic value in json) ExportData.fromJson(value),
    ];
  }

  static Map<String, ExportData> mapFromJson(Map<String, dynamic> json) {
    return <String, ExportData>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ExportData.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ExportData-objects as value to a dart map
  static Map<String, List<ExportData>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ExportData>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ExportData.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ExportData[contentType=$contentType, organization=$organization]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (contentType != null) r'contentType': contentType,
      if (organization != null) r'organization': organization,
    };
  }
}

class ExportDataContentTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ExportDataContentTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const pdf = ExportDataContentTypeEnum._(r'application/pdf');
  static const vndPeriodOpenxmlformatsOfficedocumentPeriodSpreadsheetmlPeriodSheet =
      ExportDataContentTypeEnum._(
          r'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');

  /// List of all possible values in this [enum][ExportDataContentTypeEnum].
  static const values = <ExportDataContentTypeEnum>[
    pdf,
    vndPeriodOpenxmlformatsOfficedocumentPeriodSpreadsheetmlPeriodSheet,
  ];

  static ExportDataContentTypeEnum fromJson(dynamic value) =>
      ExportDataContentTypeEnumTypeTransformer().decode(value);

  static List<ExportDataContentTypeEnum> listFromJson(List<dynamic> json) {
    return <ExportDataContentTypeEnum>[
      if (json is List)
        for (dynamic value in json) ExportDataContentTypeEnum.fromJson(value),
    ];
  }
}

/// Transformation class that can [encode] an instance of [ExportDataContentTypeEnum] to String,
/// and [decode] dynamic data back to [ExportDataContentTypeEnum].
class ExportDataContentTypeEnumTypeTransformer {
  const ExportDataContentTypeEnumTypeTransformer._();

  factory ExportDataContentTypeEnumTypeTransformer() =>
      _instance ??= ExportDataContentTypeEnumTypeTransformer._();

  String encode(ExportDataContentTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ExportDataContentTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExportDataContentTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'application/pdf':
        return ExportDataContentTypeEnum.pdf;
      case r'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet':
        return ExportDataContentTypeEnum
            .vndPeriodOpenxmlformatsOfficedocumentPeriodSpreadsheetmlPeriodSheet;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ExportDataContentTypeEnumTypeTransformer] instance.
  static ExportDataContentTypeEnumTypeTransformer _instance;
}
